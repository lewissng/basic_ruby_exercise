#Built a manual bubble sort

def bubble_sort(array)
  (array.length).times {
    array.each_with_index do |n, index|
      if array[index + 1] != nil
        if n > array[index + 1]
          temp = array[index]
          array[index] = array[index + 1]
          array[index + 1] = temp
          index += 1
        else
          next
        end
      end
    end
  }
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([2, 1])
p bubble_sort([4, 0, 78, 2, -1, 100])
