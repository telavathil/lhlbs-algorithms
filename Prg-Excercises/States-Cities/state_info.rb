states = {
    OR: 'Oregon',
    FL: 'Florida',
    CA: 'California',
    NY: 'New York',
    MI: 'Michigan'
}

states['NJ'] = 'New Jersey'
states['TX'] = 'Texas'

cities = {
    NY: ['New York City', 'Rocester'],
    FL: ['Miami', 'Orlando Tampa'],
    CA: ['San Francisco', 'LA', 'San Diego'],
    MI: ['Detroit', 'Flint']
}

# Takes as input a state code (eg: 'CA')
# task 3
def describe_state(state, cities, states)
    # Returns the details of that state, including a list of its cities (eg: 'CA is for California. It has 2 major cities: San Francisco, LA')
    # return "CA is for California. It has 2 major cities: San Francisco, LA"
    output = ""
    if cities.key?(state.to_sym)
        output.concat("#{state} is for #{states[state.to_sym]}. ")
        # if the state has one city print a different string
        if cities[state.to_sym].length > 1
            output.concat("It has #{cities[state.to_sym].length} major cities: ")
        else
            output.concat('It has 1 major city: ')
        end
        cities[state.to_sym].each do |city|
            output.concat("#{city}, ")
        end
    else
        puts 'State not found'
    end
    #format the end of the string for a period
    output.sub(/,\s$/,".")
end

#task 4
# Declare another Hash called taxes which is responsible for defining taxes for each of the states (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't will not come after you for misrepresenting their tax information.
taxes = {
  OR: 0.075,
  FL: 0.045,
  CA: 0.095,
  NY: 0.085,
  MI: 0.085,
  TX: 0.025,
  NJ: 0.065
}


#task 5
# Define another method called calculate_tax which:
#
# Takes as input the state code as well as a dollar amount (eg: 123.49)
# Determines the tax rate to use based on the provided state
# Calculates the tax amount based on that rate
# Returns the tax amount rounded to 2 decimal places (eg: 44.53)

def calculate_tax(st_code,dollars,taxes)
  (taxes[st_code.to_sym]*dollars).round(2)
end

#task 6
#Take as input the name of a city
#Return the state code for where that city is located
def find_state_for_city(city_name,cities)
  cities.each {|key, array|
    array.each {|a| puts "#{key}" if a == city_name}
  }
end

states-new ={
  NY: [['New York City', 'Rocester'],,],
  FL: [['Miami', 'Orlando Tampa']],
  CA: [['San Francisco', 'LA', 'San Diego']],
  MI: [['Detroit', 'Flint']]

}
