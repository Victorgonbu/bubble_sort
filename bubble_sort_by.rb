puts 'how large you want the array to be'
places = gets.chomp.to_i

array = Array.new(places)

i = 0
array.each do
  puts "Value of local variable is #{i + 1}"
  array[i] = gets.chomp
  i += 1
end

def bubble_sort_by(an_array)
  length = an_array.length
  i = 0
  while i < length
    j = 1
    counter = 0
    while j < length
      if yield(an_array[j - 1], an_array[j]).positive?
        an_array[j - 1], an_array[j] = an_array[j], an_array[j - 1]
        counter += 1
      end
      j += 1
    end
    counter.zero? ? break : i += 1
  end
  an_array
end

bubble_sort_by(array) do |left, right|
  left.length - right.length
end

puts 'Array sorted by number of caracter'
p array
