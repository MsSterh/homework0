# Takes an array of integers as an argument
# and returns the sum of its elements.
# For an empty array it should return zero.
def sum(array)
	array.reduce(0, :+)
end

# Takes an array of integers as an argument
# and returns the sum of its two largest elements.
# For an empty array it should return zero.
# For an array with just one element,
# it should return that element.
def max_2_sum(array)
	case array.length
	when 0
		0
	when 1
		array[0]
	else
		sort_array = array.sort
		sort_array[-1] + sort_array[-2]
	end
end

# DIFFICULT
# Takes an array of integers
# and an additional integer, n, as arguments
# and returns true
# if any two elements in the array of integers sum to n.
# An empty array should sum to zero by definition.
def sum_to_n?(array, n)
	(array.empty? && n == 0) || (array.length == 1 && array[0] == n) || array.reject{|x| !array.include?(n-x) }.length > 1
end
