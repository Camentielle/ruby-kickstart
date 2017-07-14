# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => ["a", "c", "e", "g"]
# a.every_other_char
# every_other_char(a)
# "".every_other_char         # => ""

class String
  def every_other_char
    string_copy = chars()
    every_other = ""
      string_copy.each_with_index do |letter , index|
        if index.even?
          every_other << letter
        end
      end
      return every_other
  end
end
