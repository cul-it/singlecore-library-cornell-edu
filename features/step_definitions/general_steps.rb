Given /^PENDING/ do
    pending
end


Then /^I should see a stylesheet/ do
page.should have_selector("link[rel=stylesheet]", :visible => false)
end

Then /^the page title should be "(.*?)"$/ do |title|
# Capybara 2 ignores invisible text
# https://github.com/jnicklas/capybara/issues/863
#first('title').native.text == title
#first('title').text == title
#first('title') == title
expect(page).to have_title "#{title}"
end

Then /^the '(.*?)' drop\-down should have an option for '(.*?)'$/ do |menu, option|
page.has_select?(menu, :with_options => [option]).should == true
end

Then /^I should see the xml path '(.*?)','(.*?)','(.*?)','(.*?)'$/i do |ns,xp,nsdef,str|
xml_doc  = Nokogiri::XML(page.body)
contents = xml_doc.xpath(xp,ns =>nsdef).first.text
#print "\n************* contents #{contents.inspect}\n"
#contents = xml_doc.xpath(xp,ns => nsdef).first.text
if !contents.nil? && contents.include?(str)
    page.should have_content('e')
else
    page.should have_content(xp)
end
end

Then /^I should see the xml text '(.*?)'$/i do |text|
if  page.body.include?(text)
    page.should have_content('e')
else
    page.should have_content(text)
end
end

Then /^I should see the text '(.*?)'$/i do |text|
page.should have_content(text)
end

Then /^I should not see the text '(.*?)'$/i do |text|
page.should_not have_content(text)
end

Then /^I should not see the text "(.*?)"$/i do |text|
page.should_not have_content(text)
end

Then /I should see "(.*)" (at least|at most|exactly) (.*) times?$/i do |target, comparator, expected_num|
actual_num = page.split(target).length - 1
case comparator
    when "at least"
    actual_num.should >= expected_num.to_i
    when "at most"
    actual_num.should <= expected_num.to_i
    when "exactly"
    actual_num.should == expected_num.to_i
end
end

Then /I should select checkbox "(.*)"$/i do |target|
find(:css, "\##{target}").trigger('click')
end

Then /I should select radio "(.*)"$/i do |target|
case target
    when 'OR'
    page.all(:xpath, "//input[@value='OR']").first.click
    when 'AND'
    page.all(:xpath, "//input[@value='AND']").first.click
    when 'NOT'
    page.all(:xpath, "//input[@value='NOT']").first.click
end
end

Then("I should see a {string} tag with url containing {string}") do |string, string2|
expect(page).to have_xpath("//#{string}[contains(@src,'#{string2}')]")
  end

Then("I click on {string}") do |string|
   page.click_link("#{string}")
end

