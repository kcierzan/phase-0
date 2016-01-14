# Your Names
# 1)Ian Kinner
# 2)Kyle Cierzan

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !(library.key?(item_to_make))
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    suggestions = []
    starting_remaining_ingredients = remaining_ingredients
    while (remaining_ingredients > 0)
      library.each do |food_item, ingredients|
        if remaining_ingredients >= ingredients
          suggestions << food_item
          remaining_ingredients -= ingredients
        end
      end
    end
    suggestion_hash = Hash.new(0)
    suggestions.each { |item| suggestion_hash[item] += 1 }

    string=suggestion_hash.map { |k, v| "#{v} of #{k}" }.join('; ')

    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{starting_remaining_ingredients} leftover ingredients. Suggested baking items:" + string

  end
end

p serving_size_calc("pie", 9)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

