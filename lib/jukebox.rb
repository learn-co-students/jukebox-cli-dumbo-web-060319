def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  
  songs.each.with_index(1) { |val, index| puts "#{index}. #{val}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  #users_input = gets.chomp
  users_input = gets.strip #always going to be a string because: gets
  #assume first it's a number:
  song_index = users_input.to_i

  if song_index > 0 && song_index <= songs.length
    puts "Playing #{songs[song_index - 1]}"
  elsif songs.include?(users_input)
    song_name = users_input
    puts "Playing #{song_name}"
  else puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  #loop through the following until exit is typed
  loop do
  puts "Please enter a command:"
  input = gets.chomp
  case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      exit
    end
    #end loop
  end
end
