class Check
 def initialize(giv)
   @give = giv
 end
 def set_side(s)
    @give = @give + s
    puts @give
 end
end

a = Check.new(4)
b = Check.new(10)
a.freeze
b.set_side(7)
puts a.frozen?
puts b.frozen?
a.set_side(4)
