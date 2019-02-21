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
    array.each do |client|
      if client =! nil
        puts "Now serving #{client}."
      else
        
      end

    end


    puts "Currently serving #{array[0]}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
