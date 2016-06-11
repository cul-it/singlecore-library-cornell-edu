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
  end

end