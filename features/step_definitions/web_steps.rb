Then /^show me the page$/ do
    print page.html
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

And(/^I click on text '(.*?)'$/) do |text|
    click_link(text)
end
