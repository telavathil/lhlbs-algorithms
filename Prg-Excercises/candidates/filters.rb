# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  raise '@candicates must be an Array' if @candidates.nil?
  if @candidates.each { |candidate| hash[:id] == id }
    true
  else
    nil
  end
end

def experienced?(candidate)
    candidate[:years_of_experience] >= 2
end

# More methods will go below
def qualified_candidates(candidates)
    # qualified candidates
    qualified = []

    candidates.each do |candidate|
            if (experienced?(candidate) &&
            candidate[:github_points] >= 100 &&
            (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
            candidate[:date_applied] >= 15.days.ago.to_date &&
            candidate[:age] > 17)
              qualified << candidate
            end
    end
    qualified
end

def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate|
    [candidate[:years_of_experience], candidate[:github_points]]}.reverse

end
