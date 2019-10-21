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
