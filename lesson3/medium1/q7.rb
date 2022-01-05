# Does data get ransacked?
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts munsters.object_id
p mess_with_demographics(munsters)
p munsters
p munsters.object_id

## Some unclear ramblings here... ##
# Yes, this will not ransack the data. The HASH#values method will
# return the sub-hash that is associated with each Munster name. The 
# HASH#each method will iterate through these hashes and change the 
# integer values associated with the age key by +42 and change the
# values of the gender key to other.
# My biggest confusion here is a question of how the HASH#each method's
# block can only take 1 argument, when it makes more sense it would need a 
# key and value parameter in the block.

# One thing I didn't mention in the original explanation is that the
# HASH#value and HASH#each methods are non-destructive. However, the method
# definition takes a hash parameter and uses variable reassignment to
# change its values. Now I'm confused about how the values actually mutate.

## More solid mental model below ##
# After additional review, it's not even the HASH#each method that is called.
# HASH#values returns an array (no mutation), so the ARRAY#each method is called on that return
# value. That answers my question above of how the #each method is able to take a 
# single variable in the block definition.

# I also did some review of notes and forum posts, and I remember now that the 
# ARRAY[]= syntax is actually a method with mutating properties, but only for the 
# index that is changed. The object ID of the container (the array itself) does not
# change. In other words, what I had mistaken as variable reassignment (while not far
# from the truth) is actually a destructive method invocation called on each element as
# we iterate through the array.