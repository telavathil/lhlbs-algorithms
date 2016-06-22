# Write a method to_roman that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school Roman numeral.
#

# I used this site for reference on this method
#http://blog.functionalfun.net/2009/01/project-euler-89-converting-to-and-from.html

# In other words, to_roman(4) should return the string 'IIII'.
def to_roman(input)
  #validate the input
  #fs the input is not an integer, or it is zero exit the function

    return "THe method need a number." if input.nil?
    return "The function needs an integer " unless input.is_a?(Integer)
    return "There is no roman numeral for zero" if input.zero?


  # define a hash of roman numuerals
  roman_map = {
    "1": "I",
    "2": "II",
    "3": "III",
    "4": "IV",
    "5": "V",
    "6": "VI",
    "7": "VII",
    "8": "VIII",
    "9": "IX",
    "10": "X",
    "20": "XX",
    "30": "XXX",
    "40": "XL",
    "50": "L",
    "60": "LX",
    "70": "LXX",
    "80": "LXXX",
    "90": "XC",
    "100": "C",
    "200": "CC",
    "300": "CCC",
    "400": "CD",
    "500": "D",
    "600": "DC",
    "700": "DCC",
    "800": "DCCC",
    "900": "CM",
    "1000": "M",
    "2000": "MM",
    "3000": "MMM"
  }
  #create a string to hold the number
  output = ""

  # #convert the number to a string and then back into and array of numbers
  # numbers = input.to_s.split('').map(:to_i)
  #
  # #create separte actions for each size of number
  # case numbers.length
  # when 1 #1 to 9s
  #   output.concat(roman_map[numbers[0].to_s.to_sym])
  # when 2 #10 to 99s
  #   output.concat(roman_map[(numbers[0]*10).to_s.to_sym])
  #   output.concat(roman_map[numbers[1].to_s.to_sym])
  # when 3 #100 to 999s
  #   output.concat(roman_map[(numbers[0]*100).to_s.to_sym])
  #   output.concat(roman_map[(numbers[1]*10).to_s.to_sym])
  #   output.concat(roman_map[numbers[2].to_s.to_sym])
  # when 4 #1000 to 3999s
  #   output.concat(roman_map[(numbers[0]*1000).to_s.to_sym])
  #   output.concat(roman_map[(numbers[1]*100).to_s.to_sym])
  #   output.concat(roman_map[(numbers[2]*10).to_s.to_sym])
  #   output.concat(roman_map[numbers[3].to_s.to_sym])
  # end

  #refactoring code post code reveiew
  #iterator
  i = 1000

  #loop through input to create output
  while i>=1
    # get the value of the specific power
    d = input/i
    # assign input to the remanider
    input = input % i
    #build the string
    output.concat(roman_map[(d*i).to_s.to_sym]) unless d.zero?
    #decreament the iterator by a factor of 10
    i = i/10
  end
  output
end
