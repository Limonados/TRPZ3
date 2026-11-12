class Employee
  attr_accessor :name, :base_salary

  def initialize(name, base_salary)
    @name = name
    @base_salary = base_salary
  end

  def calculate_salary
    @base_salary
  end

  def display
    puts "Працівник: #{@name}"
    puts "Зарплата: #{calculate_salary} грн"
  end
end


class Worker < Employee
  def calculate_salary
    @base_salary + 2000
  end
end


class ShopManager < Employee
  def calculate_salary
    @base_salary + 5000
  end
end


class DepartmentManager < Employee
  def calculate_salary
    @base_salary + 8000
  end
end


class CompanyManager < Employee
  def calculate_salary
    @base_salary + 12000
  end
end


employees = [
  Worker.new("Іван", 12000),
  Worker.new("Сергій", 12000),
  ShopManager.new("Олександр", 15000),
  DepartmentManager.new("Петро", 18000),
  CompanyManager.new("Андрій", 25000)
]

puts "Інформація про працівників:\n\n"

employees.each do |employee|
  employee.display
  puts
end
