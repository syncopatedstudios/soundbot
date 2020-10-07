#!/usr/bin/env ruby

# given a directory, grab sound related files
# first search for sf2 files and extract them...


# > remove_unwanted_characters
# >...convert to flac
# > create m3u


put all the files into a base directory, after renaming. this should
prevent duplicate sounds.


SOUND=ENV[:HOME]/sound


module OcdFileUtil
  module_function

  def globfiles(directory)
    Dir.glob(
      "#{Pathname.new(directory).cleanpath}/**/*.{wav,flac,mp3,opus,mkv}"
    )
  end

  def glob_soundfont(directory)
    Dir.glob(
      "#{Pathname.new(directory).cleanpath}/**/*.{sf2,sfz}"
    )
  end

end

givem a top level directory
get an array of 1 level's worth of folders
then for each folder, glob for audio files
