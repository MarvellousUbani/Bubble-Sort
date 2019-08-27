# frozen_string_literal: true

def bubble_sort(arr)
  n = arr.length
  until n <= 1
    new_n = 0

    arr.each_with_index do |item, index|
      if index > 0 && arr[index - 1] > arr[index]
        holder = arr[index - 1]
        arr[index - 1] = arr[index]
        arr[index] = holder
        new_n = index
      end
    end
    n = new_n
  end
  arr
end

puts bubble_sort([45,3,12,4])

def bubble_sort_by(arr)
  # Sort by length instead of value
  n = arr.length
  
  until n <= 1
    new_n = 0

    arr.each_with_index do |item, index|
      diff = yield arr[index-1], arr[index]
        if diff > 0 && index > 0 && arr[index - 1].length > arr[index].length
          holder = arr[index-1]
          arr[index-1] = arr[index]
          arr[index] = holder
          new_n = index
        end
      end
    n = new_n
  end
  puts arr
end

arr = ["hello","hey","hi", "lollll", "woow"]

bubble_sort_by(arr) do |x, y|
x.length - y.length
end
