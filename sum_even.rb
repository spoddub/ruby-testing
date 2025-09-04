def sum_even(numbers)
  raise ArgumentError, 'Input must be an array' unless numbers.is_a?(Array)

  numbers.select { |n| n.is_a?(Integer) && n.even? }.sum
end