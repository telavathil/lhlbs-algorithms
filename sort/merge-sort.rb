# I used this referencr to build this function
# http://www.tutorialspoint.com/data_structures_algorithms/merge_sort_algorithm.htm

def merge_sort(list)
    # recursion end
    return list if list.length == 1

    # split list into left and right lists
    mid = list.length / 2
    left = list[0, mid]
    right = list[mid, list.length]

    # recursive call on merge_sort to split the list
    left = merge_sort(left)
    right = merge_sort(right)

    # recrusive call on merge to join the sorted lists
    merge(left, right)
end

def merge(left, right)
    # creat working list to sort values of the lists
    sorted_list = []

    # loop through both lists compare each element and place the greater value on the right until they are empty
    until left.empty? || right.empty?
        # test which first element is larger
        if left.first <= right.first
            # add the first element of left list to sorted_list and remove it from the left list
            sorted_list << left.shift
        else
            # add the first element of right list to sorted_list and remove it from the right list
            sorted_list << right.shift
        end
  end
    # return the sorted list with what ever is left from the left or right list

    # use concat vs + because the + operator will create a new array each time it is called (which is expensive), while concat only appends the new element.
    sorted_list.concat(left).concat(right)
end

puts merge_sort([1, 2, 5, 3, 4])
