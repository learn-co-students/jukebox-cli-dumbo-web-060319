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

# get the songs haha
def playlist 
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
end

def help
  # list of commands
  comm_list = ["help", "list", "play", "exit"]
  puts "The available commands are: \n #{comm_list.map{|com| puts com}}"
end

# def play(entry)
#   # error message
#   err_message = "Invalid input, please try again"
#   # successful song pick
#   song_entry = ""
#   return puts err_message if entry == "" || !entry.is_a?(String) && !entry.is_a?(Integer) # || playlist.find{|song| song.include?(entry)} == nil
#   # go through our playlist
#   if entry.is_a?(Integer)
#     song_entry = playlist[entry - 1] 
#   else 
#     song_entry = playlist.find{|song| song.include?(entry)}
#   end
  
#   puts song_entry
#   return song_entry
#   # record = playlist.find{|song| song.include?("jackson")}
#   # puts "fail" if record == nil
# end

def list(songs)
  songs.map{ |song| puts song }
end