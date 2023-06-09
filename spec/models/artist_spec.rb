require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
    before :each do
      @prince = Artist.create!(name: "Prince")
  
      @purple = @prince.songs.create!(title: "purple rain", length: 345, play_count:65736573)
      @raspberry = @prince.songs.create!(title: "raspberry", length: 34335, play_count:657373)
      @blue = @prince.songs.create!(title: "blue", length: 1, play_count:99)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(11560.33)
      end
    end
  end
end