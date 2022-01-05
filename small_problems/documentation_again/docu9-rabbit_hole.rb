# where is documentation for YAML::load_file
require 'yaml'
MESSAGES = YAML.load_file('/home/travis/lsrb101/lesson2/calculator_key.yml')

puts 'Hi'

# YAML is an alias for Psych class, and load_file is an alias for Psych#unsafe_load_file
