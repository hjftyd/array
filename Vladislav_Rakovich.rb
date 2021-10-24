class MyMethods
def initialize(arr)
@array = arr.clone()
end

def method1
@array.size.times {|i| print @array[i].to_s + " " if(i%2!=0)}
@array.size.times {|i| print @array[i].to_s + " " if(i%2==0)}
puts ""
end

def method2
@array.size.times {|i| print @array[i].to_s + " " if(i%2==0)}
@array.size.times {|i| print @array[i].to_s + " " if(i%2!=0)}
puts ""
end

def method3
j = nil
@array.size.times {|i| j=i if (@array[i]>@array.first && @array[i]<@array.last)}
puts j.nil? ? "[]" : j
end

def method4
@array.index(@array.last).downto(@array.index(@array.first)) do |i|
case @array[i] > @array.first and @array[i] < @array.last
when true
puts @array[i]
break
end
case i
when @array.index(@array.first)
puts '[ ]'
end
end
end

def method5
print @array.first, ' '
@array.index(@array.first)+2.upto(@array.index(@array.last)-1) do |i|
case @array[i] %2 == 0
when true
print @array[i]+=@array.first, ' '
else print @array[i], ' '
end
end
puts @array.last
end

def method6
print @array.first, ' '
@array.index(@array.first)+1.upto(@array.index(@array.last)-1) do |i|
case @array[i] %2 == 0
when true
print @array[i]+=@array.last, ' '
else print @array[i], ' '
end
end
puts @array.last
end

def method7
print @array.first, ' '
@array.index(@array.first)+1.upto(@array.index(@array.last)-1) do |i|
case @array[i] %2 != 0
when true
print @array[i]+=@array.first, ' '
else print @array[i], ' '
end
end
puts @array.last
end

def method8
print @array.first, ' '
@array.index(@array.first)+2.downto(@array.index(@array.last)-1) do |i|
case @array[i] %2 != 0
when true
print @array[i]+=@array.last, ' '
else print @array[i], ' '
end
end
puts @array.last
end

def method9
@array.index(@array.first).upto(@array.index(@array.last)) do |i|
case @array[i] >= 0
when true
@array[i] = @array.min
print @array[i], ' '
else print @array[i], ' '
end
end
end


def method10
@array.index(@array.first).upto(@array.index(@array.last)) do |i|
case @array[i] >= 0
when true
@array[i] = @array.max
print @array[i], ' '
else print @array[i], ' '
end
end
end
end

my_methods = MyMethods.new([1,2,3,4,5])

puts "method1"
my_methods.method1

puts "method2"
my_methods.method2

puts "method3"
my_methods.method3

puts "method4"
my_methods.method4

puts "method5"
my_methods.method5

puts "method6"
my_methods.method6

puts "method7"
my_methods.method7

puts "method8"
my_methods.method8

puts "method9"
my_methods.method9

puts 
puts "method10"
my_methods.method10
