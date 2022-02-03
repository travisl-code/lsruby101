# Modify previous exercise's method so it ignores
# non-alphabetic characters.

# Examples:
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case(str)
  characters = ''
  needs_upper = true

  str.chars.each do |char|

    if char =~ /[A-Za-z]/
      if needs_upper
        characters << char.upcase
      else
        characters << char.downcase
      end

      needs_upper = !needs_upper
    else
      characters << char
    end

  end

  characters
end

# p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') #== 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'


# Further Exploration - Keyword to ignore non-alphabetic chars

def staggered_case2(str, ignore_non_alpha=false)
  characters = ''

  if ignore_non_alpha
    str.chars.each_with_index do |char, i|
      i.even? ? characters << char.upcase : characters << char.downcase
    end
  else
    needs_upper = true
    str.chars.each do |char|
      if char =~ /[a-z]/i
        needs_upper ? characters << char.upcase : characters << char.downcase
        needs_upper = !needs_upper
      else
        characters << char
      end
    end
  end

  characters
end

p staggered_case2('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case2('ALL CAPS', true) #== 'AlL cApS'
p staggered_case2('ignore 77 the 444 numbers', true) #== 'IgNoRe 77 ThE 444 nUmBeRs'
