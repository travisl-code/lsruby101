=begin

Understand the Problem
----------------------
  Input:  Array containing at least 2 elements
  Output: Array sorted using bubble sort algorithm
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Mutate original array

    -- Implicit Requirements --
    Can be ints or other elements like strings in array

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array as an argument, write a method that returns the same array
    object, but with the elements sorted using the bubble sort algorithm


Examples
--------
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


  Edge Cases:
  

Data Structure
--------------
Array input and output
Elements can be other structures, but must be comparable


Algorithm
---------
Initialize swapped to false
Initialize i to 0
Loop through array (until 2nd to last?)
  - Swapped to true
  - If arr[i] > arr[i + 1], swap them
    - Swapped to false
  - Break if swapped is true

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def bubble_sort!(arr)
  swapped = false
  index = 1
  loop do
    swapped = true
    for i in index..(arr.size - 1)
      # binding.pry
      if arr[i - 1] > arr[i]
        arr[i], arr[i - 1] = arr[i - 1], arr[i]
        swapped = false
      end

    end
    break if swapped == true
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Further Exploration - skipping
# The Wikipedia article didn't make sense to me, and I had to look at alternate
# resources to understand the non-optimal solution
