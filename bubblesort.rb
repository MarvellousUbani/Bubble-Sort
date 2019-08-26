# frozen_string_literal: true

def bubble_sort(arr)
  n = arr.length

  until n <= 1
    new_n = 0

    for i in 1..(n - 1)
      if arr[i - 1] > arr[i]
        holder = arr[i - 1]
        arr[i - 1] = arr[i]
        arr[i] = holder
        new_n = i
      end
    end
    n = new_n
  end
  arr
end

bubble_sort(arr)

def bubble_sort_by(arr)
  # Sort by length instead of value
  yield(arr)
  puts arr
end

sorter = proc { |arr|
  n = arr.length
  until n <= 1
    new_n = 0
    for i in 1..(n - 1)
      if arr[i - 1].length > arr[i].length
        holder = arr[i - 1]
        arr[i - 1] = arr[i]
        arr[i] = holder
        new_n = i
      end
    end
  n = new_n
  end
}

bubble_sort_by(%w("hi","h", "hello")) {sorter}
