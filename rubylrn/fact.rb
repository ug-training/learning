def factorial(y)
    if y==0 or y==1
     return 1
    else
     return y*factorial(y-1)
    end 
end
puts "the factoraial of 1 is #{factorial(1)}"
puts "the factoraial of 0 is #{factorial(0)}"
puts "the factoraial of 4 is #{factorial(4)}"
puts "the factoraial of 10 is #{factorial(10)}"

