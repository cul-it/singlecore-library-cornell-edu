Then /^show me the page$/ do
    print page.html
end

Then(/^I sleep (\d+) seconds$/) do |wait_seconds|
    sleep wait_seconds.to_i
end