require 'rails_helper'

RSpec.describe "Artist songs index" do
  before :each do
    @prince = Artist.create!(name: "Prince")

    @purple = @prince.songs.create!(title: "purple rain", length: 345, play_count:65736573)
    @raspberry = @prince.songs.create!(title: "raspberry", length: 34335, play_count:657373)

  end
  it 'shows all of the titles of the songs for the artists' do
    
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@raspberry.title)

  end
  it 'links to each songs show page' do
    visit "/artists/#{@prince.id}/songs"

    click_on @purple.title
    expect(current_path).to eq("/songs/#{@purple.id}")
  end

  it 'shows the average song length for the artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content("Average Song Length for Prince: 17340")
  end
end