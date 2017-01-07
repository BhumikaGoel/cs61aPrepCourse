Dir.chdir '/Users/bhumikagoel/Desktop'
song_names = Dir['/Users/bhumikagoel/Downloads/*.mp3']
#puts song_names

###---------------###--------------###-------------###--------------###--------------###_____________###

def shuffle array
  maincode array, []
end

def maincode array, shuffled_array
  if array.length == 0
    return shuffled_array
  end

  idx = rand(array.length)
  shuffled_array.push array[idx]
  array.delete_at(idx)

  maincode array, shuffled_array
end

###--------------###-------------###--------------###--------------###---------------###--------------###
shufflelist = shuffle(song_names)
File.open 'playlist.m3u', 'w' do |f|
  shufflelist.each do |entry|
        f.write entry+"\n"
  end
end

puts "Audio copied!"
