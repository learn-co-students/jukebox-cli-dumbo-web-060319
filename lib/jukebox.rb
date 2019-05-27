require "pry"

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
  # list of commands
  comm_list = ["help", "list", "play", "exit"]
  puts "The available commands are: \n #{comm_list.map{|com| puts com}}"
end

def list(songs)
  songs.map{ |song| puts song }
end

def play(songs)
  puts "►"

  request = gets.chomp

  # error message
  err_message = "Invalid input, please try again"

  
  return puts err_message if request.is_a?(String) == false || request == "" || request.to_i > songs.length ||= 0
  #   puts err_message
  #   return
  # end

  if request.to_i < 0
    puts songs[Integer(request) - 1] 
    binding.pry
    return
  end
  
  songs.map do |song| 
    if song.include?(request)
      puts song
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

def run
  puts "Please enter a command:"
  exec( "/lib/ukebox.rb" )
end