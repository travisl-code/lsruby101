# make into 2 element array w/ Barney's name and number
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.to_a[2]

# also...
p flintstones.assoc("Barney")