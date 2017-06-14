class RadixSort
  def self.sort(arr)
    return arr if arr.size < 2
    sorted = false
    multiplier = 1
    while !sorted
      radix_array = radix_sort(arr, multiplier)
      place_in_array(arr, radix_array)
      # can reason that fill first index of radix array means complete
      sorted = radix_array[0] ? radix_array[0].size == arr.size : false
      multiplier *= 10
    end

    return arr
  end

  def self.radix_sort(arr, multiplier)
    radix_arr = Array.new(10)
    mod = 10*multiplier
    divisor = 1*multiplier
    arr.each do |num|
      radix_i = ((num % mod) / divisor).floor
      radix_arr[radix_i] ? radix_arr[radix_i] << num : radix_arr[radix_i] = [num]
    end

    return radix_arr
  end

  def self.place_in_array(arr, radix_array)
    arr_i = 0
    radix_array.each do |nums|
      next unless nums
      nums.each do |num|
        arr[arr_i] = num
        arr_i += 1
      end
    end
  end
end
