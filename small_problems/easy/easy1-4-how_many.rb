=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: an array of string elements
-  Output: list of each element and a count of how many times it occurred

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Is it just an array passed? 
2. Should there be any output for an empty array?
3.

---

**Mental Model:**

--- Given an array, iterate through each element in the array
and count how many times each element occurs in the array. Print the
elements and their occurrences in "element => occurrences" format.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: ['car', 'car', 'truck']
  -  Output: car => 2
             truck => 1
-  Example 2
  -  Inputs: ['car']
  -  Output: car => 1

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: []
  -  Output: No elements in array to count!

---

Data Structure
--------------

--- I think a hash would be good, where each element
of the array is moved into the hash as a key, the value is the
count, incrementing.

Algorithm
---------
Given an array...
IF array is empty
  - RETURN generic message

ELSE
  - Create a new array containing only the unique elements from original
  - Remove elements from the array_uniques and move them into a hash as
  keys with values set to 0
  - Iterate through original array
    - For each element, increment Hash[element] += 1
Print each key and its associated value as output

Code
----

=end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'Motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  if array.size == 0
    puts "Array is empty!"
  else
    array_uniques = array.uniq
    elements_with_counts = {}
    loop do
      elements_with_counts[array_uniques.shift] = 0
      break if array_uniques.empty?
    end
    array.each do |element|
      elements_with_counts[element] += 1
    end
    elements_with_counts.each { |k, v| puts "#{k} => #{v}" }
  end
end

# further exploration - case insensitive

def count_occurrences2(array)
  array.map! { |element| element.downcase }
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end
  
  occurrences.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences2(vehicles)
count_occurrences2([])
