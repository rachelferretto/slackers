
=begin
given a list of names
Joe Black
Mary Jane
Bob hawke

hackers
  |
  |--joe_black
  |--README.md
  |
  |--mary_jane
  |     |-README.md
  |
  |--bob_hawke
        |-README.md


useful: fileutils

ruby hackers.rb
=end

require 'fileutils'

hackers = ['Joe Black', 'Mary Jane', 'Bob Hawke']

# that do end thing??? - ruby blocks - scope
hackers.each do |hacker| 
  dir_name = hacker.downcase.gsub(' ', '_')

  FileUtils.mkdir(dir_name)
  FileUtils.cd(dir_name) do
    FileUtils.touch('README.md')
  end
end

# loop for each hackers

# make a dir with the hackers name
# cd into dir
# touch a readme.md file
# cd ..




