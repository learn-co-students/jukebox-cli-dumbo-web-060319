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

def play(entry)
  puts songs
end

# For method, play, I get an error message:
# undefined local variable or method `songs'
# even though it's globally defined on line 3