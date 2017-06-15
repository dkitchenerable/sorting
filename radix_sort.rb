class RadixSort
  def self.sort(arr)
    sorted = false
    multiplier = 1
    while !sorted
      # size for 0-9 digits
      radix_array = Array.new(10)
      sorted = radix_sort(arr, radix_array, multiplier)
      place_in_array(arr, radix_array)
      multiplier *= 10
    end

    return arr
  end

  def self.radix_sort(arr, r_array, multiplier)
    mod = 10*multiplier
    divisor = 1*multiplier
    num_zeros = 0
    arr.each do |num|
      r_index = ((num % mod) / divisor).floor
      r_array[r_index] ? r_array[r_index] << num : r_array[r_index] = [num]
      num_zeros += 1 if r_index == 0
    end
    return num_zeros == arr.size
  end

  def self.place_in_array(arr, radix_array)
    index = 0
    radix_array.each do |nums|
      next unless nums
      nums.each do |num|
        arr[index] = num
        index += 1
      end
    end
  end
end
