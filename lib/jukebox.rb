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

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

# def play(songs)
#   puts "Please enter a song name or number:"
#   song_choice = gets.chomp
#   songs.each_with_index do |song, i|
#     if song_choice.to_i == i 
#       puts "Playing #{songs[i - 1]}"
#     elsif song_choice == song
#       puts "Playing #{song}"
#     else
#       puts "Invalid input, please try again"
#     end
#   end
# end

def exit_jukebox 
  puts "Goodbye"
end


# def run 
#   help
#   loop do 
#     puts "Please enter a command:"
#     input = gets.chomp
#     case input 
#       when "list"
#         list(songs)
#       when "play"
#         play(songs)
#       when "help"
#         help 
#       when "exit"
#         exit_jukebox
#     end
    
#     break if input == "exit"
#   end
# end

def run(songs)
  input = gets.chomp
  puts "Please enter a command:"
  case input
  when help
    help
  when exit
    exit_jukebox
  when list
    list(songs)
  when play(songs)
    play(songs)
  end
end




def play(songs)
input = gets.chomp
  if songs.include?(input)
    songs.find do |song|
      if song == input
        puts song
      end
    end
  elsif input.to_i.is_a? Integer
    if input.to_i > songs.length || input.to_i == 0
      puts "Invalid input, please try again"
    else
      puts songs[((input.to_i) - 1)]
    end
  end
end
