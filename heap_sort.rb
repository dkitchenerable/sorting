require_relative 'utility.rb'
class HeapSort
  def self.sort(arr)
    heap_size = arr.size
    # first heapify
    heapify(arr, heap_size)
  
    n = heap_size - 1
    while n > 0
      Utility.swap(arr, 0, n)
      max_heapify(arr, 1, n)
      n -=1
    end

    return arr
  end

  def self.heapify(arr, heap_size)
    index = heap_size/2
    while index > 0
      max_heapify(arr,index, heap_size)
      index -= 1
    end
  end

  def self.max_heapify(arr, index, heap_size)
    left = index * 2
    right = left + 1
    root = index

    # check left
    if (left <= heap_size)
      root = left if arr[left - 1] > arr[root - 1]
    end
    
    # check right
    if (right <= heap_size)
      root = right if arr[right - 1] > arr[root -1]
    end
    # if not the same swap, with largest child and re-run with largest root
    if root != index
      Utility.swap(arr, root - 1, index - 1)
      max_heapify(arr, root, heap_size)
    end
  end
end
