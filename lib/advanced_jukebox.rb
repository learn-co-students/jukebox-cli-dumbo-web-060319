#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/samip/lab/jukebox-cli-dumbo-web-060319/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
  - help : displays this help mesexiage
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  arr_songs=my_songs.keys
  arr_songs.each_with_index do |name,i|
    puts (i+1).to_s+ ". "+name 
  end
end


def play(my_songs)
  puts "Please enter a song name :"
  input=gets.chomp
  if my_songs.has_key?(input) 
    puts "Playing <#{input}>"
    url=my_songs[input]
    p url
    system "open #{url}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
command=""
  until command== "exit"
  puts "Please enter a command:"
  command=gets.chomp
      if command == "list"
          list(my_songs)
      elsif command== "play"
          play(my_songs)
      elsif command =="help"
          help
  
      end
  end
  exit_jukebox
end
