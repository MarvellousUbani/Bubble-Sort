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


arr1 = [5, 3, 2, 34, 12]
# bubble_sort(arr1)

print bubble_sort(arr1)