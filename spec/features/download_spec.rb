require 'spec_helper'
require 'rails_helper'
RSpec.feature 'Item download' do

  scenario 'visit a Persuasive Maps Ernst Adler item view' do
    visit solr_document_path('ss:19343284')
    expect(body).not_to have_content 'Download'
  end

  scenario 'visit another Persuasive Maps item view' do
    visit solr_document_path('ss:3293712')
    expect(body).to have_content 'Download'
  end

  scenario 'visit another item that should have download' do
    visit solr_document_path('ss:3875086')
    expect(body).to have_content 'Download'
  end

  scenario 'Paniccioli should not have download on item view' do
    visit solr_document_path('ss:22741489')
    expect(body).not_to have_content 'Download'
  end

  scenario 'Download PDF link on item view' do
    visit solr_document_path('ss:21072993')
    expect(body).not_to have_content 'Download item'
  end
end