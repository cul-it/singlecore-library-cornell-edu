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

Given("I go to Forum asset id {string}") do |string|
    visit("/catalog/ss:#{string}")
end

Given("I go to asset {string}") do |string|
    visit("/catalog/#{string}")
end

Then("I should see the field labeled {string}") do |string|
    within "div.item-info" do
        find(:xpath, "//dt[text()='#{string}:']")
    end
end


Then("the field labeled {string} should begin with {string}") do |string, string2|
    within ("div.item-info") do
        find(:xpath, "//dt[text()='#{string}:']").first(:xpath, "//following-sibling::dd[starts-with(.,'#{string2}')]")
    end
end


Then("the field labeled {string} should also contain {string}") do |string, string2|
    within "div.item-info" do
        expect(find('dt', text: "#{string}:").find('+dd')).to have_content(string2)
    end
end


Then("I should see images in the referencestrip") do
    expect(page.find("div.referencestrip")).to have_selector("div.openseadragon-container > div.displayregion")
end

Then("I should find an unpublished image") do
    within "div#document" do
        expect(find("div.unpublished")).to have_content("Unpublished")
    end
end

Then("I should see an IIIF image") do
    within "div#openseadragon1" do
        list = all("div.openseadragon-container > div.openseadragon-message")
        list.each do | x |
            x.should have_no_content("Unable to open")
        end
    end
end

Given("I should not see the multiimage group region") do
    expect(page.find('div#document')).not_to have_selector("div.multi-images")
end

Then("the issues listed should start in {int}") do |int|
    # html.js body.blacklight-catalog.blacklight-catalog-show div#main-container div#maincontent.container div.row div#content.col-sm-12 div#document.document div#doc_chla1043101 div.col-sm-8.item-info h3
    # /html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/h3[1]
    expect(page.first('div.item-info > h3')).to have_content(int)
end

Then("the publication name should be {string}") do |string|
    expect(page.first('div#document > div > h1')).to have_content(string)
end

Then("the first issue year shoud be {string}") do |string|
    expect(page.first('div.item-info > h3')).to have_content(string)
end

Then("the last issue year shoud be {string}") do |string|
    expect(page.all('div.item-info > h3').last).to have_content(string)
end
