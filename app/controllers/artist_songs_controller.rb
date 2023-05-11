class ArtistSongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artists_id])
    @songs = @artist.songs
  end
end