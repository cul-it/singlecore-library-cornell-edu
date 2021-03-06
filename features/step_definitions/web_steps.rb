Then /^show me the page$/ do
    print page.html
end

Then("show me the element {string}") do |string|
    element = page.first(string)
    what_is element
end

Then(/^I sleep (\d+) seconds$/) do |wait_seconds|
    sleep wait_seconds.to_i
end

def what_is(element)
    puts "\n********************* what is V\n"
    puts page.current_url.inspect
    puts "\n"
    puts element.inspect
    puts "\n"
    puts element.text
    puts "\n"
    puts "\n********************* what is ^\n"
end

Given("where am I") do
    where_am_i
    show_environment
end

def where_am_i
    puts "\n" + URI.parse(current_url).to_s
end

def show_environment
    puts "\n******************************"
    puts "Capybara.app_host " + Capybara.app_host.to_s
    puts "ENV['RAILS_ENV'] " + ENV['RAILS_ENV']
    puts "ENV['COLLECTIONS'] " + ENV['COLLECTIONS']
    puts "******************************\n"
end

Then("show environment") do
    show_environment
end

And(/^I click on text '(.*?)'$/) do |text|
    click_link(text)
end

def find_facet_id(label)
    case "#{label}"
    when "Date Range"
        id = 'facet-latest_date_isi'
    when "Work Type"
        id = 'facet-type_tesim'
    when "Materials/Techniques"
        id = 'facet-mat_tech_tesim'
    when "Archival Collection"
        id = 'facet-archival_collection_tesim'
    when "Creator"
        id = 'facet-creator_facet_tesim'
    when "Location"
        id = 'facet-location_facet_tesim'
    when "Language"
        id = 'facet-lang_tesim'
    when "Set"
        id = 'facet-set_title_tesim'
    when "Status"
        id = 'facet-status_ssi'
    else
        id = 'facet-' + label.downcase! + '_tesim'
    end
end

Given("I click more » on the {string} facet") do |string|
    section = 'div#' + find_facet_id(string)
    within section do
        find("li.more_facets_link > a").click
    end
end

Given("I go to page {int} of the facet modal") do |int|
    x = int.to_i
    if x > 1
        for n in 1..x do
            page.find("div.prev_next_links > a.btn", text: 'Next »').click
        end
    end
end

Then("I should not see a facet labeled {string}") do |string|
    labels = page.all("a.facet_select")
    labels.each do | label |
        expect(label).not_to have_content(string)
    end
end

Then("I see the asset is suppressed") do
    expect(page.find('div#content h1')).to have_content('Item restricted')
end

Then("I see the asset is not suppressed") do
    expect(page.find('div#content h1')).not_to have_content('Item restricted')
end
