class Product
  attr_accessor :id, :name, :price

  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
  end

  def display
    puts "ID: #{@id}, Назва: #{@name}, Ціна: #{@price} грн"
  end
end


class Store
  attr_accessor :sid, :sname

  def initialize(sid, sname)
    @sid = sid
    @sname = sname
    @sproducts = []
  end

  def add(product)
    @sproducts << product
    puts "Товар '#{product.name}' додано на склад."
  end

  def remove(product_id)
    product = @sproducts.find { |p| p.id == product_id }

    if product
      @sproducts.delete(product)
      puts "Товар '#{product.name}' видалено зі складу."
    else
      puts "Товар з ID #{product_id} не знайдено."
    end
  end

  def search(product_id)
    product = @sproducts.find { |p| p.id == product_id }

    if product
      puts "Знайдено товар:"
      product.display
    else
      puts "Товар з ID #{product_id} не знайдено."
    end
  end

  def display_products
    puts "\nТовари на складі '#{@sname}':"

    if @sproducts.empty?
      puts "Склад порожній."
    else
      @sproducts.each(&:display)
    end
  end
end


product1 = Product.new(1, "Ноутбук", 25000)
product2 = Product.new(2, "Миша", 800)
product3 = Product.new(3, "Клавіатура", 1500)

store = Store.new(101, "Основний склад")

store.add(product1)
store.add(product2)
store.add(product3)

store.display_products

puts "\nПошук товару:"
store.search(2)

puts "\nВидалення товару:"
store.remove(2)

store.display_products
