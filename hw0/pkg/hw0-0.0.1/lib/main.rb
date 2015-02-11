def sum(arr)
 
 sum = 0
 arr.each{|x| sum += x}
 return sum
 
end


def max_2_sum(arr)
 
 if(arr[0] == nil)
   return 0
 end
 
 if(arr.length == 1)
   return arr[0]
 end
 
 largesta = arr[0]
 largestb = -1
 sum = 0
 arr.sort!
 largesta = arr[arr.length-1]
 largestb = arr[arr.length-2]
 sum = largesta+largestb
# for x in arr
#   if(arr[sum] > largesta)
#       largestb = largesta
#       largesta = arr[sum]
#   elsif (arr[sum] > largestb && arr[sum] != largesta)
#     largestb = arr[sum]
#     
#   end
#   sum += 1
# end
    
   return sum
end

def sum_to_n?(arr, n)
 if(arr.length() <= 1)
   return false
 end

 
 arr.each do |x|
   arr.each do |y|
     if((x+y) == n)
       return true
     end
   end
 end
 return false
end

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  s.downcase!
  if(s == "")
    return false
  end
  if(s.chr == "a" || s.chr == "e" || s.chr == "i" || s.chr == "o" || s.chr == "u")
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
 s.chars
 if(s[s.length()-1] == 0 && s[s.length()-2] == 0)
   return true
 else
   return false
 end
end

puts binary_multiple_of_4?("1100")