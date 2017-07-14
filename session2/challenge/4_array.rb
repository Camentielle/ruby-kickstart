# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(arr)
  sorted_arr = arr.sort
  # sorted_arr[3 , 9, 9, 81]

  with_sq_arr = []
  sorted_arr.each do |n|
    with_sq_arr << n**2
    # with_sq_arr[9, 81, 81, xxxx]
  end

  final_arr = []
  with_sq_arr.each do |n|
    final_arr << Math.sqrt(n).round if sorted_arr.count(n) >= 1
  end
  return final_arr
  # final_arr[3, 9, 9]
end
