class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def perimeter
    @a + @b + @c
  end

  def area
    semi_perimeter = perimeter / 2.0

    Math.sqrt(
      semi_perimeter *
      (semi_perimeter - @a) *
      (semi_perimeter - @b) *
      (semi_perimeter - @c)
    )
  end

  def display
    puts "Сторони трикутника: #{@a}, #{@b}, #{@c}"
    puts "Периметр: #{perimeter}"
    puts "Площа: #{area.round(2)}"
  end
end


triangle = Triangle.new(8, 12, 5)

puts "Інформація про трикутник:"
triangle.display
