# 2 ways to put "Four score and" in front

famous_words = "seven years ago..."
start_words = "Four score and "

start_words += famous_words
puts start_words

start_words = "Four score and "
start_words << famous_words
puts start_words

# Could also use the STRING#prepend method
