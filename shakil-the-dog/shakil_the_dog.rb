# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).

# You'll probably want to write other methods, but this
# encapsulates the core dog logic
def shakil_the_dog
  print "What do you want to say to Shakil?"
  arrg = gets.chomp
  case arrg
    #If you pretend to be a dog and bark ("woof") at him
  when arrg.match(/W|woof/)
    puts "WOOF WOOF WOOF"
    #If you explicitly use his name and tell him to stop
  when arrg.match(/shakil\ss|St|To|Op|P/)
    puts "Enjoy your moment of peace"
    #If you pretend to be a cat and "meow" at him
  when arrg.match(/meow/)
    puts "woof woof woof woof woof"
    #if you offer him a treat
  when arrg.match(/treat/)
    puts "Shakil thinks he's getting a treat"
    #if you say go away
  when arrg.match(/go away/)
    puts "The dog walks off"
  else
    puts "woof"
  end
  
end

# Run our method
shakil_the_dog
