def merge_sort(arr)
	return arr if arr.length <= 1

	mid = arr.length/2
	arr1 = arr[0, mid]
	arr2 = arr[mid, arr.length]

	sort_arr(merge_sort(arr1), merge_sort(arr2))
end

def sort_arr(arr1, arr2)
	sorted_arr = []
	while arr1.length != 0 && arr2.length != 0
		if arr1[0] < arr2[0]
			sorted_arr << arr1.shift
		else
			sorted_arr << arr2.shift
		end
	end

	while arr1.length != 0
		sorted_arr << arr1.shift
	end

	while arr2.length !=0
		sorted_arr << arr2.shift
	end
	sorted_arr
end

p merge_sort([2,1,3,104,86,6,45])