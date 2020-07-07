puts "how large you want the array to be"
places = gets.chomp.to_i

array = Array.new(places)

def bubble_sort (array, places)
    
array.each_with_index do |number, i|
    puts "please, let me know the ##{i+1}"
    array[i]= gets.chomp.to_i
end
i = 0
while i < places do 
    j = 1
    counter = 0
    while j < places do 
        if array[j-1] > array[j]
            array[j-1], array[j] = array [j], array[j-1]
            counter += 1
        end 
        j += 1
    end
    counter == 0 ? break : i +=1 
end 
array
end



p bubble_sort(array, places)
