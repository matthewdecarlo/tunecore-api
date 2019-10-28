class CreateSongArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :song_artists do |t|
      t.integer :artist_id
      t.integer :song_id
      t.timestamps
    end
  end
end
