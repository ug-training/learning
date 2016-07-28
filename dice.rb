puts "enter the low value of dice"
a=gets.chomp.to_i
puts "enter the high value of dice"
b=gets.chomp.to_i
puts "enter q to quit"
while true
  puts">>>#{rand(a  ..  b)}"#to get random values
	if gets.chomp =='q'
	  break;
	end
end 
