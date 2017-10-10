def looping(num)
  new_array = []
  number = 1

  while number <= num.to_i do
    new_array << number
    number = number + 1
  end

  return new_array
end
