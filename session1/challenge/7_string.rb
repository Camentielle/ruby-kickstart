# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string_copy = ''
  (string.length-1).times do |i|
    if string[i] == 'r' || string[i] == 'R'
    string_copy = string_copy << string[i+1]
    end
  end
  return string_copy
end
