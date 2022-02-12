=begin
joinor method for TTT game

Input - array passed in as arg
      - optional 2nd arg for unique delimiter (default `,`)
      - optional 3rd arg for unique separator word (default `or`)
Output - String joining array elements together
      - Defaul values of array element + `,` + `or` before last element
      - Defaults can be replaced
      - Two elements in array does not use a `,`

Questions:
1) What to do if array = 1 element? 
2) 0 elements?
3) Validation needed for array?

Examples:
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

Data Structure:
Array passed in (required)
String operations needed for concatenation of elements

Algorithm:
1) Assign default values to 2nd and 3rd args
  - 2nd delimiter=', '
  - 3rd sep_word='or'
2) Evaluate array length
  - length of 1, return element as string
  - length of 2, return el1 and el2 as string separated by sep_word
3) Join the elements of array using the delimiter value
4) Add `word_sep` to the 2nd-to-last index + ' '

Code with Intent
=end

def joinor(arr, delimiter=', ', sep_word='or')
  result = ''
  if arr.length == 1
    result = arr[0].to_s
  elsif arr.length == 2
    result = "#{arr[0]} #{sep_word} #{arr[1]}"
  elsif arr.length > 2
    result = arr.join(delimiter)
    result = result.insert(-2, "#{sep_word} ")
  end
  result
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
