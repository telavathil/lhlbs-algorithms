# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here



def search_candidates
    #   find 1: This will display candidate with id 1
    # all: This will print them all out to the screen (one per line)
    # qualified: This will print only qualified candidates, ordered by experience and points (one per line)
    # quit: Exit the REPL / program
    running = true
    while running do
        puts '<********************************************>'
        puts '1.Find a Candidate'
        puts '2.Show all Qualified Candidates'
        puts '3.Exit/Quit'
        puts '<********************************************>'
        puts ('What would you like to do?')
        ans = gets.chomp
        binding.pry
        # Find a Candidate
        binding.pry
        if ans == '1'
            puts("Please provide the candidate ID number....")
            id = gets.chomp
            if find(id)
              puts("Here is the candidate with #{id}....")
              puts @candidates.select {|candidate| candidate[:id] == id}
            else puts("Here is the candidate with #{id}....")
              puts("There is no candidate with #{id}....")
            end

        # Show all Qualified Candidates
      elsif ans == '2'
            puts("Qualified Candidates are:")
            pp qualified_candidates(@candidates)
        # Exit/Quit
      elsif ans == '3'
            puts("Goodbye")
            running = false
        else
            puts("Not Valid Choice Try again")
        end
      end
end
