require_relative 'library/helper.rb'

generate_library_from_csv().each do | song |
  album = Album.find_or_create_by!({title: song['album_title']})
  album_song = album.songs.create!({title: song['song_title']})

  song['song_artists'].each do | artist |
    artist = Artist.find_or_create_by!( artist )
    album_song.artists.push( artist )
  end
end

# albums = Album.create!([{title: 'Classic Lullabies From Around The World'}])
# artists = Artist.create!([{first_name: 'Anne', last_name:'Walsh'}])
# songs = Song.create!([{title: 'Baby Mine', album_id: 1}])
# albums = AlbumArtist.create!([{album_id: 1, artist_id:1}])