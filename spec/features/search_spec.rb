# frozen_string_literal: true
require 'spec_helper'

describe "Search Page" do
  it "should show welcome" do
    visit root_path
    expect(page).to have_selector("input#q")
    within ("select#search_field") do
      expect(page).to have_selector('option', text: 'All Fields')
      expect(page).to have_selector('option', text: 'Title')
      expect(page).to have_selector('option', text: 'Creator')
      expect(page).to have_selector('option', text: 'Subject')
    end
    expect(page).to have_selector("button[type='submit'] .submit-search-text")
    expect(page).to_not have_selector("#startOverLink")

    tmp_value = Capybara.ignore_hidden_elements
    Capybara.ignore_hidden_elements = false
    expect(page).to have_selector("link[rel=stylesheet]")
    Capybara.ignore_hidden_elements = tmp_value
  end

  it "should do searches across all fields" do
    visit root_path
    fill_in "q", with: 'history'
    select 'All Fields', from: 'search_field'
    click_button 'search'

    tmp_value = Capybara.ignore_hidden_elements
    Capybara.ignore_hidden_elements = false
    expect(page).to have_selector("link[rel=alternate][type='application/rss+xml']")
    expect(page).to have_selector("link[rel=alternate][type='application/atom+xml']")

    # opensearch
    expect(page).to have_selector("meta[name=totalResults]")
    expect(page).to have_selector("meta[name=startIndex]")
    expect(page).to have_selector("meta[name=itemsPerPage]")
    Capybara.ignore_hidden_elements = tmp_value

    within "#appliedParams" do
      expect(page).to have_content "history"
    end

    within ("select#search_field") do
      expect(page).to have_selector("option[selected]", text: "All Fields")
    end

    within ("#sortAndPerPage") do
      expect(page).to have_content "Sort by"
      expect(page).to have_content "1 - 20 of"
      within '#sort-dropdown' do
        expect(page).to have_link('relevance')
        expect(page).to have_link('year (descending)')
        expect(page).to have_link('year (ascending)')

      end
    end
    within "#documents" do
      expect(page).to have_selector(".document", count: 20)
    end
  end

  it "should do searches constrained to a single field" do
    visit root_path
    fill_in "q", with: 'time flies'
    select 'Title', from: 'search_field'
    click_button 'search'

    within "#appliedParams" do
      expect(page).to have_content "Title"
      expect(page).to have_content "time flies"
    end
    within ("select#search_field") do
      expect(page).to have_selector("option[selected]", text: "Title")
    end
    # within(".index_title") do
    #   expect(page).to have_content "1."
    # end
    within ("#sortAndPerPage") do
      expect(page).to have_content "1"
    end
  end


  it "should allow you to clear the search" do
    visit root_path
    fill_in "q", with: 'history'
    click_button 'search'
    within "#appliedParams" do
      expect(page).to have_content "history"
    end

    expect(page).to have_selector "#q[value='history']"

    click_link "Start Over"

    expect(page).to_not have_selector "#q[value='history']"
  end

  it "should gracefully handle searches with invalid facet parameters" do
    visit root_path f: { missing_s: [1]}
    expect(page).to have_content "No results found for your search"
  end
end
