def sum_upto(n)

	return 1 if n == 1

	return sum_upto(n-1) + n
end

def append2 (arr, n)

	n.downto(0) {|i| arr << i}
	arr
	
end

def app_arr (arr, n)

	return arr if n == 0
	arr << n
	app_arr(arr, n-1)
	arr

end

def reverse_append(arr, n)

	return arr if n == -1
	reverse_append arr, n - 1
	arr << n
	arr
	
end

dig = []
p reverse_append dig, 12 




#puts sum_upto 100
