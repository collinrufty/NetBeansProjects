module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/[^(a-zA-Z)]/, "")
    if(self == self.reverse)
      return true
    else
      return false
    end
  end
  
  def count_words
    self.downcase!
    self.gsub!(/[^a-zA-Z\s]/, "")
    s = self.split
    words = Hash.new{}  
    
    s.each do |x|
      if(words.has_key?(x))
        words[x] = words.fetch(x) + 1
      else
        words[x.to_s] = 1
      end
    end
    return words
  end
  
  def anagram_groups
    self.downcase!
    s = self.split
    return s.combination() {|x| x.chars.sort}
   
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
  puts "racecar".palindrome?
  puts "This is a t.est test".count_words
  puts "scream cars for four scar creams".anagram_groups
end