songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |name,i|
    puts (i+1).to_s+ ". "+name 
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input=gets.chomp
  if my_songs.include?(input) || (1..9).include?(input.to_i)
    if (1..9).include?(input.to_i)
      input=input.to_i
      puts "Playing <#{my_songs[input-1]}>"
    else
      puts "Playing <#{input}>"
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
puts "Goodbye"
end

def run(song)
help
command=""
  until command== "exit"
  puts "Please enter a command:"
  command=gets.chomp
      if command == "list"
          list(song)
      elsif command== "play"
          play(song)
      elsif command =="help"
          help
  
      end
  end
  exit_jukebox
end