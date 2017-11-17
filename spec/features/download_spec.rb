require 'spec_helper'
require 'rails_helper'
# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
RSpec.feature 'Item download' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit a Persuasive Maps Ernst Adler item view' do
    visit solr_document_path('ss:19343284')
    expect(body).not_to have_content 'Download'
  end

  scenario 'visit another Persuasive Maps item view' do
    visit solr_document_path('ss:3293712')
    expect(body).to have_content 'Download'
  end

  scenario 'visit an item view without creator' do
    visit solr_document_path('ss:3875086')
    expect(body).to have_content 'Download'
  end
end