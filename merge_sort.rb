def merge(arr1, arr2)
  arr_merged = Array.new(arr1.length+arr2.length, 0)
  p1, p2, mp = 0,0,0
#  p index1,index2,index_merge --> 0,0,0
#  p arr_merged.length -->8
  while p1<arr1.length && p2<arr2.length
    if (arr1[p1] < arr2[p2])
      arr_merged[mp] = arr1[p1]
      p1 += 1
      mp += 1
    else
      arr_merged[mp] = arr2[p2]
      p2 += 1
      mp += 1
    end
  end
  while p1 < arr1.length
   arr_merged[mp += 1] = arr1[p1 += 1] 
  end
  while p2 < arr2.length
   arr_merged[mp] = arr2[p2]
   p2 +=1
  end
  return arr_merged
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.size/2
  left = arr[0, mid]
  right = arr[mid+1, arr.size]
  merge(merge_sort(left),merge_sort(right))
 # merge_sort(arr, mid+1, hi)
 #Store value in temporary array
  # merge(arr[0..mid], arr[mid+1..-1])
end

def mergeSort arr
  merge_sort(arr)
end

#merge([3,7,12,18],[2,5,16,21])
mergeSort([14,7,3,12,9,11,6,2])
#mergeSort([123534,23214232,443542352,53252353,42353254235,324325753,47,2354326,34346134,62,51,35,65])
