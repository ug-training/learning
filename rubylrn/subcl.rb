class Contant
  @@value=5
  def initialize(len,width)
  @len = len
  @width = width
  end
  def area
  puts @@value=@len*@width*@@value
  end
  def printv
  puts "#{@len}\n#{@width}"
  end
end
class Thin < Contant
  def initialize(val)
   @val = val
   super(val,val)
  end
  def printval
   puts @val
 end
end
s=Thin.new(3)
r=Thin.new(2)
s.area
s.printv
s.printval
r.area

