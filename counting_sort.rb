# implementation assumes universe from 0 - 10
class CountingSort
  def self.sort(arr)
    # based on assumption of size
    # alternatively could do a pass to determine max
    count_arr = Array.new(11,0)

    arr.each do |num|
      count_arr[num] += 1
    end

    arr_index = 0
    count_arr.each_with_index do |value, index|
      if value > 0
        for i in 1..value
          arr[arr_index] = index
          arr_index += 1
        end
      end
    end
    return arr
  end
end
