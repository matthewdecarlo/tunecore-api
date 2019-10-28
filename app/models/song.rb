class Song < ApplicationRecord
  belongs_to :album
  has_many :song_artists
  has_many :artists, through: :song_artists
end
