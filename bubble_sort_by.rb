

def bubble_sort_by(an_array)
 length = an_array.length
 i = 0
while i < length do
  j = 1
  counter = 0
  while j < length do 
    if yield(an_array[j-1], an_array[j]) > 0 
        an_array[j-1], an_array[j] = an_array[j], an_array[j-1]
        counter += 1
    end 
    j += 1
  end
  counter == 0 ? break : i +=1

end
an_array     
end

bubble_sort_by(arr) do |left, right|
 left.length - right.length    
end



p arr