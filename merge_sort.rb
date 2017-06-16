class MergeSort
  def self.sort(arr)
    copy = arr.dup
    merge_sort(arr, copy, 0, arr.size - 1)
    return arr
  end

  private

  def self.merge_sort(arr, copy, left, right)
    if left < right
      middle = ((left + right) / 2).floor
      merge_sort(arr, copy, left, middle)
      merge_sort(arr, copy, middle + 1, right)
      copy = arr.dup
      merge_halves(arr, copy, left, right)
    end
  end

  def self.merge_halves(orig, copy, left, right)
    middle = ((left + right) / 2).floor
    left_i = left
    right_i = middle + 1
    orig_index = left

    # copy elements into orig array in order
    while left_i <= middle && right_i <= right
      if copy[left_i] <= copy[right_i]
        orig[orig_index] = copy[left_i]
        left_i += 1
      else
        orig[orig_index] = copy[right_i]
        right_i += 1
      end
      orig_index += 1
    end

    # put remaining left back in orig
    while left_i <= middle
      orig[orig_index] = copy[left_i]
      left_i += 1
      orig_index += 1
    end

    # put remaining right back in orig
    while left_i <= middle
      orig[orig_index] = copy[right_i]
      right_i += 1
      orig_index += 1
    end
  end
end
