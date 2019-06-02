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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  user_song = ""
  puts "Please enter a song name or number"
  user_input = gets.chomp
  songs.each_with_index do |song, index|
    if user_input.to_i - 1 == index
      user_song = song
    elsif user_input == song
      user_song = song
    else
      puts "Invalid input, please try again"
    end
  end
  puts "Playing #{user_song}"
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts help
  loop do
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "exit"
      exit_jukebox
      break
    elsif user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    end
  end
end

