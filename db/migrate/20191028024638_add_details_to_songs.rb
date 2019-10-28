class AddDetailsToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :album_id, :integer
    add_index :songs, :album_id
  end
end
