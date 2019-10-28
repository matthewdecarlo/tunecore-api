class Album < ApplicationRecord
  has_many :songs
  has_many :album_artists
  has_many :artists, through: :album_artists
end
