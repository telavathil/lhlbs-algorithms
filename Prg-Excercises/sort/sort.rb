# Sort the array from lowest to highest
def sort(arr)
    # arr.sort
    n = arr.length
    swapped = false
    until swapped
        for i in 1..n do
            if arr[i - 1] > arr[i]
                swap!(arr[i - 1], arr[i])
                swapped = true
            end
        end
    end
end

#swap method for sort
def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
end

# Find the maximum
def maximum(arr)
    sort(arr).last
end

def minimum(arr)
    sort(arr).first
end

# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"

result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"

result = maximum([6])
puts "max of just 6 is: #{result}"
