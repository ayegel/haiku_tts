def grading(num)
  if num < 60
    return "F"
  elsif num <= 69
    return "D"
  elsif num <= 79
    return "C"
  elsif num <= 89
    return "B"
  elsif num <= 100
    return "A"
  else
    return "Wrong score"
  end
end
