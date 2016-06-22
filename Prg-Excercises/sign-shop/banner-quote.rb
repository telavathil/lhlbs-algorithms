#Signs cost $15 per square foot.
#If a sign has two colours or fewer, add $10 for each colour.
#If a sign has more than two colours, add $15 for each colour.
#Tax is 15%
#The boss insists that he just wants one function that he can put the dimensions and colour count in, and get the total back.
#

def bannerquote(length,width,colour_count)
  #test for valid imputs
  return "Invalid Input" if !(length.is_i && width.is_i && colour_count.is_i)
  #Tax is 15%
  tax = 1.15
  #Signs cost $15 per square foot.
  sign_cost = (length * width * 15)
  #If a sign has more than two colours, add $15 for each colour.
  #If a sign has more than two colours, add $15 for each colour.
  colour_count > 2 ? (sign_cost + (10*colour_count))*tax : (sign_cost + (15*colour_count))*tax

end
