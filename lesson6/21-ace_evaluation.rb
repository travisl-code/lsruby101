=begin
## Building method to evaluate ace value in hand of 21 game

Input - arg1) Array containing at least 1 ace card
        arg2) Sum total of non-ace cards
Output - Integer representing card value below 21 if possible
          ... above 21 if unavoidable

Examples:
evaluate_ace_value(['ace'], 20) == 21
evaluate_ace_value(['ace'], 10) == 21
evaluate_ace_value(['ace'], 18) == 19
evaluate_ace_value(['ace'], 4) == 5
evaluate_ace_value(['ace', 'ace'], 9) == 21
evaluate_ace_value(['ace', 'ace'], 4) == 16
evaluate_ace_value(['ace', 'ace'], 19) == 21
evaluate_ace_value(['ace', 'ace'], 10) == 12

Data Structures:
Array passed in as arg1 
Integer as arg2 and for math operations

Algorithm:
1) Initialize aces total as []
2) Iterate through aces array. For each ace...
  - If total <= 10, aces total by 11
  - If total > 10, ace total by 1
3) Evaluate if sum of aces array + total > 21
  - If no, break
  - If yes, change an 11 to a 1

Code with intent...
=end

HIGH = 21
ACE_HIGH = 11
ACE_LOW = 1

def evaluate_ace_value(ace_arr, hand_value)
  ace_values = []
  ace_arr.map do |ace|
    if ace_values.sum + hand_value <= HIGH - 11
      ace_values << ACE_HIGH
    else
      ace_values << ACE_LOW
    end
  end
  
  if ace_values.sum + hand_value > HIGH
    ace_values[ace_values.index(ACE_HIGH)] = ACE_LOW
  end
  
  ace_values.sum + hand_value
end

p evaluate_ace_value(['ace'], 20) == 21
p evaluate_ace_value(['ace'], 10) == 21
p evaluate_ace_value(['ace'], 18) == 19
p evaluate_ace_value(['ace'], 4) == 15
p evaluate_ace_value(['ace', 'ace'], 9) == 21
p evaluate_ace_value(['ace', 'ace'], 4) == 16
p evaluate_ace_value(['ace', 'ace'], 19) == 21
p evaluate_ace_value(['ace', 'ace'], 10) == 12
