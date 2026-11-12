numbers = [3, 7, 2, 9, 5]
k = 10

result = numbers.all? { |number| number < k }

puts "Масив: #{numbers.inspect}"
puts "Значення K: #{k}"
puts "Усі елементи менші за K: #{result}"

