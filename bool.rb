a=10
b=20
puts"Enter a numbers"
num1=gets.chomp.to_i
num2=gets.chomp.to_i
puts "the system values are #{a} #{b}"
puts "**using simple if and equal double sign**"
if a == num1
puts "the entered num is equal to 10"
else
puts "the entered value is not equal to 10"
end
if b == num2
puts "the entered num is equal to 20"
else
puts "the entered num is not equal to 20"
end
puts "**using if and 'and' symbol**"
if (a == num1) && (b == num2)
puts "the entered values are equal to system values"
else
puts "the entered values are not equal to system values"
end
puts "**using if and 'or' symbol**"
if (a == num1) || (b == num2)
puts "the entered values are equal to system values or either one of the value is equal"
else
puts "the entered values are not equal to system values"
end
puts "**using if and not**"

