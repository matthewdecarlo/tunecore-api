class Artist < ApplicationRecord
  has_many :album_artists
  has_many :albums, through: :album_artists
  has_many :songs, through: :albums

  def generate_display_name
    @stage_name = self.stage_name
    @full_name = "#{self.first_name} #{self.last_name}".strip

    @stage_name ? @stage_name : @full_name
  end
end
