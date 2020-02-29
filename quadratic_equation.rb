print "Enter a: " 
a = gets.chomp
a = a.to_i
print "Enter b: "
b = gets.chomp
b = b.to_i
print "Enter c: "
c = gets.chomp
c = c.to_i
d = b**2-4 * a * c
if d < 0 
    puts "D = #{d}. No roots"
elsif d > 0
    x1 = (-b + Math.sqrt(d)) / (2 * a)
    x2 = (-b - Math.sqrt(d)) / (2 * a)
    puts "D = #{d}. x1 = #{x1}, x2 = #{x2}" 
else d == 0
    x = -b / (2 * a)
    puts "D = #{d}. x1,2 = #{x}"
end