puts "Enter the sal"
sal=gets.chomp.to_i
puts "enter the dept"
dept=gets.chomp
puts "*****using if under if******"
if sal >10000
 if dept == 'ece'
   puts"good salary"
	else 
 	 puts "other dept"
end
else
puts "low salary"
end
puts "******using while condition"
puts "ente a num"
a= gets.chomp.to_i
while a < 100
puts "the squared values"
 puts a=a*2
 a=a+10
end
 
