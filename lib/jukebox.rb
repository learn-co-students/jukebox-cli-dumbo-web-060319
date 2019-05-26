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
# def playlist 
#   songs = [
#     "Phoenix - 1901",
#     "Tokyo Police Club - Wait Up",
#     "Sufjan Stevens - Too Much",
#     "The Naked and the Famous - Young Blood",
#     "(Far From) Home - Tiga",
#     "The Cults - Abducted",
#     "Phoenix - Consolation Prizes",
#     "Harry Chapin - Cats in the Cradle",
#     "Amos Lee - Keep It Loose, Keep It Tight"
#   ]
# end

def help
  # list of commands
  comm_list = ["help", "list", "play", "exit"]
  puts "The available commands are: \n #{comm_list.map{|com| puts com}}"
end

def list(songs)
  songs.map{ |song| puts song }
end

def play(entry)
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

  # error message
  err_message = "Invalid input, please try again"
  # successful song pick
  # song_entry = ""
  # return puts err_message if entry == "" || entry == nil
  return puts err_message if !entry.is_a?(String) & !entry.is_a?(Numeric) # || playlist.find{|song| song.include?(entry)} == nil
  # go through our playlist
  if entry.is_a?(Numeric)
    puts songs[entry - 1] 
    return songs[entry - 1]
  elsif entry.is_a?(String)
    song_entry = songs.select{|song| song.include?(entry)}
    puts song_entry
    return song_entry
  end
  
  # puts song_entry
  # return song_entry
  # record = playlist.find{|song| song.include?("jackson")}
  # puts "fail" if record == nil
end


def exit_jukebox
  puts "Goodbye"
  exit
end