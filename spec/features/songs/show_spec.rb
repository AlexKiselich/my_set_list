require "rails_helper"

RSpec.describe "the songs show page" do
  it "displays the song title" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really like you", length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 308, play_count: 5656357)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it "displays the name of artist for the song" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really like you", length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 308, play_count: 5656357)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
  
end