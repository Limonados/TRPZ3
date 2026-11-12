text = "Ruby is a powerful programming language"

words = text.split
words[0], words[-1] = words[-1], words[0]

result = words.join(" ")

puts "Початковий рядок: #{text}"
puts "Результат: #{result}"
