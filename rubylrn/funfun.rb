def div2(x) 
    if x%2 == 0
	return true
	else
	return false
     end
end
def div6(y)
    if div2(y) and y%3 == 0
      puts "num is divisible by 6"
	else
      puts "num not divisible by 6"
    end
end
div6(12)
