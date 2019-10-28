# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 'Baby Mine', 'Anne Walsh', 'Classic Lullabies From Around The World'

albums = Album.create!([{title: 'Classic Lullabies From Around The World'}])
artists = Artist.create!([{first_name: 'Anne', last_name:'Walsh'}])
songs = Song.create!([{title: 'Baby Mine', album_id: 1}])
albums = AlbumArtist.create!([{album_id: 1, artist_id:1}])