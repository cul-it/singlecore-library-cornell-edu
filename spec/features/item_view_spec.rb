require 'spec_helper'
require 'rails_helper'
# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
RSpec.feature 'Item' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit an item view' do
    visit solr_document_path('ss:3293947')
    expect(title).to have_content 'Persuasive Maps: PJ Mode Collection'
    expect(body).to have_content 'Date posted:'
  end

  scenario 'date added click to search' do
  	visit solr_document_path('ss:8435794')
  	click_link '2015-08-25'
  	expect(page).to have_content "Date posted"
  end

  scenario 'bolivian read item link displays' do
    visit solr_document_path('bol:0001')
    expect(page).to have_content "Read item"
  end

  scenario 'IIIF viewer should display Download link' do
    visit solr_document_path('ss:157518')
    within (".image-controls") do
      expect(page).to have_content "Download"
    end
  end

  scenario 'Relationships field should link to another item' do
    visit solr_document_path('ss:22376768')
    within ("dd.blacklight-map_relationships_tesim") do
      have_link '22536137'
    end
  end

end
