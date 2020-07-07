puts "how large you want the array to be"
places = gets.chomp.to_i

array = Array.new(places)

array.each_with_index do |number, i|
  puts "please, let me know the ##{i + 1}"
  array[i] = gets.chomp
end

$length = array.length

def bubble_sort (an_array)
  i = 0
  while i < $length do
    j = 1
    counter = 0
    while j < $length do
      if an_array[j - 1].to_i > an_array[j].to_i
          an_array[j - 1], an_array[j] = an_array [j], an_array[j - 1]
          counter += 1
      end
      j += 1
    end
    counter == 0 ? break : i +=1
  end
an_array
end

def bubble_sort_by(an_array)
  i = 0
  while i < $length do
    j = 1
    counter = 0
    while j < $length do
      if yield(an_array[j - 1], an_array[j]) > 0
        an_array[j - 1], an_array[j] = an_array[j], an_array[j - 1]
        counter += 1
      end
      j += 1
    end
    counter == 0 ? break : i += 1
  end
  an_array
end

bubble_sort_by(array) do |left, right|
  left.length - right.length
end

puts "Array sorted chain"
p array

puts "Array sorted number"
p bubble_sort(array)
