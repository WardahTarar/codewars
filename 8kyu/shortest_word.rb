=begin
Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
=end

def find_short(s)
  s = s.split(" ").min_by(&:length)
  s.length
end