# one-liner to count 't' characters in string
statement = "The Flintstones Rock!"
p statement.gsub(/[^t]/, '').length

# or..
p statement.count('t')
