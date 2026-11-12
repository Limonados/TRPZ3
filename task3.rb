text = "Ruby is simple powerful and flexible"

words = text.split
shuffled = words.shuffle

puts "Початковий рядок: #{text}"
puts "Перемішаний рядок: #{shuffled.join(' ')}"
