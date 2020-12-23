class AddFile < ROM::Commands::Create[:sql]
  relation :files
  register_as :add

  result :one

end

#add_file = rom.command(:files).add
#add_file.call(filename: "filename", location: "/path", type: "flac")
