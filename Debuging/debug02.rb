def average(numbers)
  sum = 0
  numbers.each do |num|
    #cast num to float
    sum += num.to_f if !num.nil? #ignore nils within the array
  end
  sum / numbers.size
end

## TEST HELPER METHOD
def test_average(array=nil)
  #handle nil arguments
  return "Test case is nil, please provide values." if array.nil?
  #handle empty array

  if array.empty?
     return "Test case is []"
  else
     print "avg of #{array.inspect}:"
  end
  result = average(array)
  p result
end

## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10

# Should treat string like number
test_average([15,'5',10]) # => 10

# Should show decimal value
test_average([10, 5]) # => 7.5 instead of just 7

# Watch out! Even tests can have bugs!
#converted arrg to array as per method sig
test_average([9, 5, 7])

# Empty set should return nil, not throw an error
test_average([]) # => nil

# Non-existent set should return nil
test_average() # => nil

# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6
