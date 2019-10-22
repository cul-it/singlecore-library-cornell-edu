Then("the asset title field should contain {string}") do |string|
    within "dd.blacklight-title_tesim" do
        expect(page).to have_content "#{string}"
    end
end

Then("the page header should contain {string}") do |string|
    within "div#document" do
        expect(page.find(:css, 'h1')).to have_content "#{string}"
    end
end

Given("I go to asset id {string}") do |string|
    visit("/catalog/ss:#{string}")
end

Then("I should see the field labeled {string}") do |string|
    within "div.item-info" do
        find(:xpath, "//dt[text()='#{string}:']")
    end
end


Then("the field labeled {string} should begin with {string}") do |string, string2|
    within "div.item-info" do
        find(:xpath, "//dt[text()='#{string}:']").first(:xpath, "//following-sibling::dd[starts-with(.,'#{string2}')]")
    end
end
