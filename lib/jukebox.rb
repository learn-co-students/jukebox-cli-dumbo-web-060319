# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

# def help()
#   puts 
#   " I accept the following commands:
# - help : displays this help message
# - list : displays a list of songs you can play
# - play : lets you choose a song to play
# - exit : exits this program"
# end 

# def list(songs)
#   songs.each_with_index do |name , idx|
#   puts "#{idx+1}. #{name}"
# end
# end

# def play(songs)
#   puts "Please enter a song name or number:"
#   req = gets.chomp
#   songs.each_with_index do |song, i|
#     if req.to_i == i
#     puts "playing #{songs[i-1]}"
#   elsif req == song 
#   puts "playing #{song[i]}"
# else puts "Invalid input, please try again"
#   end 
# end 
# end 

# def exit_jukebox()
# puts "Goodbye"
# end

# def run()
#   puts help()
#   loop do 
#   puts "Please enter a command:"
#       value = gets.chomp
#       case value
#       when "list"
#       puts  list(songs)
#       when "play"
#         play(songs)
#       when "help"
#         help()
#       when "exit"
#         exit_jukebox()
#   else "Please enter a command:"
#   end
# break if value == "exit"
# end
# end
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

songs = [
  "Phoenix - 1901",l
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp()
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def prompt()
  puts "Please enter a command:"
  gets.chomp()
end

def run(my_songs)
  help()
  input = prompt()
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt()
    elsif input == "play"
      play(my_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end
  
  exit_jukebox()
end
