class V1::SongsController < ApplicationController
  def index
    @songs = Song.all.map do |song|
      {
      song_id: song.id,
      song_title: song.title,
      album_title: song.album.title,
      song_artists: get_song_artist_display_names(song)
      } 
    end

    render json: @songs, status: :ok
  end

  private
  
  def get_song_artist_display_names song
    song.artists.map do | artist|
      {
        artist_id: artist.id,
        display_name: artist.generate_display_name
      }
    end
  end
end
