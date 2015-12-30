# Calculate a Grade

# I worked on this challenge [by with: Mike Pintar ].


# Your Solution Below
def get_grade(x)
  if x >= 90
    return "A"
  elsif x >= 80 && x < 90
    return "B"
  elsif x >= 70 && x < 80
    return "C"
  elsif x >= 60 && x < 70
    return "D"
  else x >= 50 && x < 60
    return "F"
  end
end