# frozen_string_literal: true
require 'spec_helper'
require 'rails_helper'

describe "Bookmarks" do
  describe "navigating from the homepage" do
    it "should have a link to the history page" do
      visit root_path
      click_link 'Bookmarks'
      expect(page).to have_content 'You have no bookmarks'
    end
  end

  it "should clear bookmarks" do
    visit solr_document_path('ss:3293947')
    click_button 'Bookmark'
    click_link 'Bookmarks'
    click_link 'Clear Bookmarks'
    expect(page).to have_content 'Cleared your bookmarks.'
    expect(page).to have_content 'You have no bookmarks'
  end

 
end