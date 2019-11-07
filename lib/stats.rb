# Define your methods here

def sum_of_arrays(numbers)
	numbers.reduce(0){|sum, number| sum += number}
end


def mean(numbers)
	sum_of_arrays(numbers)/numbers.count.to_f
end

def median(numbers)

	numbers = numbers.sort!
	median = 0
	locate = numbers.count / 2

	if numbers.count % 2 == 0
		# even
		f_element = numbers[locate-1]
		s_element = numbers[locate]
		median = (f_element + s_element) / 2.to_f
	else
		# odd get middle number
		median = numbers[locate]
	end
	median
end

def mode(set)
  table = Hash.new{ |h, k| h[k] = 0 }
  number_and_counts = set.reduce(table) { |memo, e| memo[e] += 1; memo }
  top_count = -1
  top = -1
  number_and_counts.each_pair do |k, n|
    if n > top_count
      top_count = n
      top = k
    end
  end
  top
end

def standard_deviation(set)
  Math.sqrt(mean(set.map{ |n| (n - mean(set)) ** 2 }))
end

