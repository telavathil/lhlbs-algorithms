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
    FL: %w(Miami Orlando Tampa),
    CA: ['San Francisco', 'LA', 'San Diego'],
    MI: %w(Detroit Flint)
}

# Takes as input a state code (eg: 'CA')

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
