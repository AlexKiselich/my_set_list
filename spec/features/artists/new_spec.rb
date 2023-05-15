require "rails_helper"

RSpec.describe "The artist creation" do
  it 'links to the new page from the artists index' do
    visit "/artists"
    click_link('New Artists')
    expect(current_path).to eq("/artists/new")
  end
  it 'can create a new artists' do
    visit "/artists/new"

    fill_in("Name", with: "Prince")
    click_button("Create Artists")

    expect(current_path).to eq("/artists")
    expect(page).to have_content("Prince")
  end
end