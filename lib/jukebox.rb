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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = get.chomp

#puts say_hello(users_name)

def help 
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list song_array
  list_num = 1
  song_array.each do |song|
  	puts "#{list_num}. #{song}"
  	list_num += 1
  end
end

def play song_array
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if user_response.to_i.is_a?(Integer) && user_response.to_i != 0
  	if user_response.to_i <= song_array.size
  	  puts "Playing #{song_array[user_response.to_i - 1]}"
  	else
  	  puts "Invalid input, please try again"
  	end
  else
    song_array.each do |song|
  	  if song.downcase == user_response.downcase
  	    puts "Playing #{song}"
  	    return
  	  end
    end
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run songs
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
  	if user_input.downcase == "list"
  	  list(songs)
  	elsif user_input.downcase == "help"
  	  help
  	elsif user_input.downcase == "play"
  	  play(songs)
  	end
  	puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end