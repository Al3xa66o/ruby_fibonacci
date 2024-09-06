
def merge_sort(array)
  if array.length <= 1
    return array
  else
    middle = array.length / 2
    first_half = merge_sort(array.slice(0, middle))
    second_half = merge_sort(array.slice(middle, array.length))

    merge(first_half, second_half)
  end
end

def merge(left_arr, right_arr)
  sorted_array = []

  while !left_arr.empty? && !right_arr.empty? do
    if left_arr[0] < right_arr[0]
      sorted_array.push(left_arr.shift)
    else
      sorted_array.push(right_arr.shift)
    end
  end
  return sorted_array.concat(left_arr).concat(right_arr)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])