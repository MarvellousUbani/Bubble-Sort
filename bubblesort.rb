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

def bubble_sort_by(arr)

    arr.each do |x, y|
        yield # y <=> x
    end

end
