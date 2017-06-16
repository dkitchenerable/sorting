require_relative 'utility.rb'

class CountingSort
  def self.sort(arr)
    return arr if arr.size < 2
    # starting from the second index 
    # iterate backwards and swap when necessary
    for i in 1..arr.size-1
      j = i - 1
      while j >= 0
        if arr[i] < arr[j]
          Utility.swap(arr, i, j)
          i = j
        end
        j -= 1
      end
    end
    return arr
  end
end
