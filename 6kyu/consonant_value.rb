=begin
Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings.

For example:
solve("zodiacs") = 26, because the consonant substrings are: z, d and cs with values z = 26, d = 4 and cs = 3 + 19 = 22. The highest is 26.
--Note that the value of a = 1, b = 2 ... z = 26.
--Vowels are a,e,i,o,u.
=end

def solve(string)
  str = []
  alphabets = ("a".."z").to_a
  consonants = string.split(/[a,e,i,o,u]/)

  consonants.each do |cons| 
    x = []
    cons.chars.each do |c| 
    x << alphabets.index(c) + 1
    end

    if x.empty?
      x << 0
    end

    str << x.reduce(:+)
  end
  str.max
end