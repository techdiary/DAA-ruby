
def binary_search(arr1, s)
   p arr1.sort!
   puts "#{s} Value in sorted array is at:"
   b_sort(arr1, s.to_i, 0, arr1.length)
end

def b_sort(arr, val, low, high)
  return ArgumentError if high < low
  @mid = (high+low)/2
  if arr[@mid] > val
    return b_sort(arr, val, low, @mid-1)
  elsif arr[@mid] < val
    return b_sort(arr, val, @mid+1, high)
  else
    puts @mid+1
  end

end

binary_search([1212,48348,535,145234,4324324], 1212)
