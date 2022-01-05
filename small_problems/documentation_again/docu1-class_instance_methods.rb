# Difference between File::path and File#path ?

# File::path (Class method) appears to return a string representing the file path itself
puts File.path("test2.txt") # doesn't create a file

# File#path (Instance method) appears to require an object
file = File.new("test.txt") # file already exists in directory
puts file.path
