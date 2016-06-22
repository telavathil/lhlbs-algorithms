# Write a method count_letters that can tell us all the unique characters that exist in a string that is passed into the method. Furthermore, the method should also report back how many instances of each letter were found in the string.
#
# Methods generally return one object. That object can be a number, a boolean, nothing (nil), a symbol, a string, and so on. However, we need to return an object that can represent all the characters found in the input string, and their respective counts.
def count_letters(arrg)
  #define an open dict
  letters = {}

  #convert the string into and array of characters
  chars = arrg.split('')
  #loop through elements of the chars
  chars.each { |c|
    #search dict for char value
    if letters.has_key?(c)
    #if the char is found increament value by one
      letters[c] +=1
    else
    #if the char is not found add the char to the dict
      letters[c] = 1
    end
  }
  #return dict
  return letters
end
