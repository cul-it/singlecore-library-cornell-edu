require 'spec_helper'
require 'rails_helper'
require 'blacklight'

RSpec.feature 'Landing page' do

  scenario 'visit aerial ny landing page' do
    visit '/collections/aerialny'
    expect(page).to have_content 'historical aerial photographs'
  end

  scenario 'visit blaschka landing page' do
    visit '/collections/blaschka'
    expect(page).to have_content 'Leopold and Rudolf Blaschka'
  end

  scenario 'visit indonesian music landing page' do
    visit '/collections/indonesianmusic'
    expect(page).to have_content '193 hours of audio recordings made in Indonesia'
  end

  scenario 'visit punk flyers landing page' do
    visit '/collections/punkflyers'
    expect(page).to have_content 'Johan Kugelberg punk collection'
  end

  scenario 'visit ragamala landing page' do
    visit '/collections/ragamala'
    expect(page).to have_content 'Rāgamālā is a unique form of Indian painting'
  end

  scenario 'visit railroad landing page' do
    visit '/collections/railroad'
    expect(page).to have_content 'The U.S. Presidential Railroad Commission was established by Executive Order'
  end

  scenario 'visit tarr landing page' do
    visit '/collections/tarr'
    expect(page).to have_content 'Ralph Stockman Tarr (1864-1912)'
  end

  scenario 'visit digitizing tell-en-nasbeh landing page' do
    visit '/collections/tell-en-nasbeh'
    expect(page).to have_content 'Tell en-Naṣbeh is an archaeological site'
  end

  scenario 'visit lindsay cooper landing page' do
    visit '/collections/lindsaycooper'
    expect(page).to have_content 'Lindsay Cooper Digital Archive'
  end

end