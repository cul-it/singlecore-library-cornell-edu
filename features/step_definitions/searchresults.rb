Then (/^I select the sort option '(.*)'$/) do | option |
    # this does not work!!!
    within ('div#sort-dropdown') do
      dropdown = find(:css, 'button.dropdown-toggle')
      click(option)
    end
  end

Then("I search for asset {string}") do |string|
  string.gsub!(/\\"/, '"')
  fill_in('q', :with => string)
  page.find(:css, 'button#search').click
end

Then("the first search result should have field {string} starting {string}") do |string, string2|
  within ('div#documents') do
    within ('div.document-position-0 dl') do
      find(:xpath, "//dt[text()='#{string}:']", match: :first).first(:xpath, "//following-sibling::dd[starts-with(.,'#{string2}')]")
    end
  end
end

Then("there should be {int} search results") do |int|
  expect(page.find('div#searchresults div#documents')).to have_selector('div.document', count: int)
end

Then("the collection should show {int} assets") do |int|
  begin
    if int.to_s == '0'
      expect(page).not_to have_selector("div#sortAndPerPage span.page_entries strong[3]")
    else
      # put the commas into the integer
      int = int.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
      expect(page.find("div#sortAndPerPage span.page_entries strong[3]")).to have_content(int)
    end
  rescue Capybara::ElementNotFound => e
    where_am_i
    show_environment
    raise e
  rescue RSpec::Expectations::ExpectationNotMetError => e
    where_am_i
    show_environment
    raise e
  end
end

Then("I should see {int} additional views") do |int|
  expect(page.find('div.multi-image-wrapper')).to have_selector('div.multi-image', count: int)
end

Then("result {int} field {string} should begin {string}") do |int, string, string2|
  within ("div#searchresults div#documents div.document[#{int}] dl") do
    dt = page.find('dt', text: /^#{string}:$/)
    dd = dt.sibling('dd', match: :first, text: /^#{string2}/)
  end
end

Then("the field labeled {string} should begin {string} and link to facet {string}") do |string, string2, string3|
  within ("div#document div.item-info dl") do
    dt = page.find('dt', text: /^#{string}:$/)
    dd = dt.sibling('dd', match: :first, text: /^#{string2}/)
    expect(dd).to have_link(href: /[^_]#{string3}/)
  end
end

Given("I search for everything") do
  search = URI.escape("/?utf8=✓&q=&search_field=all_fields")
  visit(search)
end

Then("I should not see id {string} in the search results") do |string|
  link = "a[href=\"/catalog/#{string}\"]"
  rows = page.all("div.documentHeader h5.index_title")
  rows.each do |row|
    expect(row).not_to have_selector(link)
  end
end
