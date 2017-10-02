def insert_sort(arr)
  arr.length.times do |j|

    while j.to_i >0 && arr[j-1] > arr[j]
      temp = arr[j-1]
      arr[j-1] = arr[j]
      arr[j] = temp
      j -= 1
    end

  end
 p arr 
end

insert_sort [2,1,3]
insert_sort [5,2,4,6,1,3]
