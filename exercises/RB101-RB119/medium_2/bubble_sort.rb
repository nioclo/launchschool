def bubble_sort!(arr)
  change_made = true
  length = arr.size
  while change_made
    change_made = false
    (length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        change_made = true
      end
    end
  end
end
