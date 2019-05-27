#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
  "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
  "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help 
  #this method should be the same as in jukebox.rb
  comm_list = ["help", "list", "play", "exit"]
  puts "The available commands are: \n #{comm_list.map{|com| puts com}}"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.map{ |song_name, song_path| puts song_name }
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  request = gets.chomp

  # error message
  err_message = "Invalid input, please try again"

  return puts err_message if request.is_a?(String) == false || request == "" || request.to_i.is_a?(Integer) > 0
  
  my_songs.map do |song_name, song_path| 
    if my_song.include?(song_name)
      puts song
      path_to_song = song_path.remove("< path to this directory >/jukebox-cli")
      open path_to_song
      return
    else 
      puts err_message
      return
    end
  end
end

def exit_jukebox
  puts "Goodbye"
  exit
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  puts "Please enter a command:"
  exec( "/lib/advanced_jukebox.rb" )
end
