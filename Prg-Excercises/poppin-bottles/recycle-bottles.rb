# You've just been hired at Lighthouse Markets, a reputable (and thoroughly fictional) grocery store chain. One of the primary features of Lighthouse Markets is their recycling program on pop bottles. Here is how the program works:
#
# For every two empty bottles, you can get one free (full) bottle of pop
# For every four bottle caps, you can get one free (full) bottle of pop
# Each bottle of pop costs $2 to purchase
#
# Given these parameters, write a program so that you can figure out how many total bottles of pop can be redeemed given a customer investment.

# task 1
def bottle_recycle(cash)
    bottle_cost = 2 # Each bottle of pop costs $2 to purchase
    empty_redeem = 2 # For every two empty bottles, you can get one free (full) bottle of pop
    cap_redeem = 4 # For every four bottle caps, you can get one free (full) bottle of pop
    init_bottle = cash / bottle_cost
    recycled_bottles = 0
    bottles = 0
    caps = init_bottle
    empties = init_bottle
    until caps < 4 && empties < 2
        bottles = 0
        unless empties.zero?
            bottles += empties / empty_redeem
            empties -= empties % empty_redeem
        end
        unless caps.zero?
            bottles += caps / cap_redeem
            caps -= caps % cap_redeem
        end
        recycled_bottles += bottles
        caps += bottles
        empties += bottles
    end
    [init_bottle, recycled_bottles, caps, empties]
end

# task 2
# Write a REPL that will prompt the user for the amount (in dollars) that the customer is going to spend. The REPL will then calculate the total number of bottles that the customer will receive and prompt for the next customer's amount.
# def bottle_recycle(cash)

def customer_bottles
    choice = 'Y'
    while choice == 'Y' || choice == 'y'
        print 'How much money would you like to spend on bottles, keep in mind that a bottle costs $2 --->'
        cash = gets.chomp
        bottles = bottle_recycle(cash.to_i)
        print "You got #{bottles[0]} bottles with your cash, and #{bottles[1]} from redeeming caps and empties. You still have #{bottles[2]} caps and #{bottles[3]} empty bottle. Would you like to by some more bottles Y or N --->"
        choice = gets.chomp
  end
end

def init_bottle_count(cash)
    bottle_cost = 2 # Each bottle of pop costs $2 to purchase
    empty_redeem = 2 # For every two empty bottles, you can get one free (full) bottle of pop
    cap_redeem = 4 # For every four bottle caps, you can get one free (full) bottle of pop
    bottles = cash / bottle_cost
    rec_bottle_recycle(bottles, bottles, bottles)
end

def rec_bottle_recycle(total_bottles, caps = 0, empties = 0)
    free_bottles = empties / 2 + caps / 4
    total_bottles += free_bottles
    empties = empties % 2
    caps = caps % 4
    empties += free_bottles
    caps += free_bottles
    if caps < 4 && empties < 2
        return total_bottles
    else

        puts '>>>>>>>>>>'
        puts "total_bottles are #{total_bottles}"
        puts "caps are #{caps}"
        puts "empties are #{empties}"
        rec_bottle_recycle(total_bottles, caps, empties)
    end
end

puts init_bottle_count(10)
