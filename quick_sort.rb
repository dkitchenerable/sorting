require_relative 'utility.rb'

# implementation uses leftmost element as pivot
class QuickSort
  def self.sort(arr)
    quick_sort(arr, 0, arr.size - 1)
    return arr
  end

  private

  def self.quick_sort(arr, left, right)
    if left < right
      partition_index = pivot(arr, left, right)
      quick_sort(arr, left, partition_index - 1)
      quick_sort(arr, partition_index + 1, right)
    end
  end

  def self.pivot(arr, left, right)
    pivot_element = arr[left]
    pivot_index = left
    for i in (left + 1)..right
      if arr[i] <= pivot_element
        pivot_index += 1
        # avoid unneeded swaps if element is in correct spot
        Utility.swap(arr, i, pivot_index) if i != pivot_index
      end
    end
    Utility.swap(arr, left, pivot_index)
    return pivot_index
  end
end
