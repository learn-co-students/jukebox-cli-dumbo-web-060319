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

  if entry.is_a?(String) == false && entry.is_a?(Numeric) == false # || playlist.find{|song| song.include?(entry)} == nil
    puts err_message
    return
  end

  if entry == ""
    puts err_message
    return
  end

  if entry.is_a?(Numeric)
    binding.pry
    puts songs[entry - 1] 
    return
  elsif entry.is_a?(String)
    # binding.pry
    songs.map do |song| 
      if song.include?(entry)
        puts song
        return
      end
    end
  end

end

play(3)


def exit_jukebox
  puts "Goodbye"
  exit
end