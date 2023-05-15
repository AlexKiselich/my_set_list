require 'rails_helper'

RSpec.describe "Artist edit" do
  it 'Links to the edit page' do
    artist = Artist.create!(name: "Not Prince")
    visit '/artists'

    click_button "Edit #{artist.name}"

    expect(current_path).to eq("/artists/#{artist.id}/edit")
  end
    it 'can edit the artist' do
    artist = Artist.create!(name: "Not Princ")

    visit "/artists/"
    expect(page).to have_content("Not Princ")

    click_button "Edit Not Princ"

    fill_in "Name", with: "Not Prince"
    click_button "Update Artist"

    expect(current_path).to eq("/artists")
    expect(page).to have_content("Not Prince")
      
    end
end