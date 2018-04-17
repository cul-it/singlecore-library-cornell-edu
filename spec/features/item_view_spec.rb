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

  scenario 'IIIF viewer displays and with download link' do
    visit solr_document_path('ss:157518')
    within ("#openseadragon") do
      expect(page).to have_content "Download"
    end
  end

end
