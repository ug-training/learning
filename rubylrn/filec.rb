#f=open("test1.txt")
#puts f.read
#f.close
#f=open("test1.txt",'w')
#f.write("the second  line")
#f.close
#f=open("test1.txt",'r')
#puts f.read
#f.close
f=open("test1.txt",'a')
f.write("the third  line")
f.close
f=open("test1.txt",'r')
puts f.read
f.close


