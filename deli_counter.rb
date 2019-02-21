require 'pry'
katz_deli = []

def line(array)

  if array.length == 0
    puts "The line is currently empty."
  else
    array.each_with_index.map {|i, index| katz_deli.push("#{index + 1}. #{i}")}
    puts "The line is currently: #{katz_deli.join(" ")}"
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
end
#binding.pry

def now_serving(array, number)
  if array.length > 0
  count = 0
    while count <= number
      if array[count] =! nil
        puts "Now serving #{array[count]}."
      else
        puts "The queue is empty!"
      end
      count += 1
    end
    # puts "Currently serving #{array[0]}."
    # array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
