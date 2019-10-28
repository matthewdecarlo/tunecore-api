require 'csv'

def generate_library_from_csv
  play_list_names = ['deep_focus', 'studio_ghibli', 'クリスマスソングを何か']

  parsed_list = play_list_names.map do | name |
    play_list = File.join( Rails.root, 'db', 'library', name + '.csv' )
    
    parse_playlist( play_list )
  end

  parsed_list.flatten
end

private
def parse_playlist play_list
  document = File.read( play_list )
  parsed_document = CSV.parse( document, headers: true )
  songs = []

  
  parsed_document.each do | song |
    songs.push( song.to_hash )
  end

  songs.map { | song | parse_song_artists( song ) }
end

def parse_song_artists song
  split_by_comma_or_ampersand = /\s*&\s*|,s*&\s*/
  song_artists = song['song_artists'].split(split_by_comma_or_ampersand)
  
  song['song_artists'] = song_artists.map { | name | parse_artist_name( name )}

  song
end

def parse_artist_name name
  artist_name = name.split(' ')

  if artist_name.length > 2
    return { 
      first_name: nil,
      last_name: nil,
      stage_name: name
    }
  else
  return {
    first_name: artist_name[0],
    last_name: artist_name[1]
  }
  end
end