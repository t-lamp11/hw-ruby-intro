# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else 
    tot = 0
    i = 0
    begin 
      tot = tot + arr[i]
      i = i + 1
    end while i < arr.count
  end
  return tot
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.count == 1
    return arr[0]
  else 
    maxArr = arr.max(2)
    return maxArr[0] + maxArr[1]
  end
end

def sum_to_n? arr, n
  boolVal = false
  if arr.empty?
    return boolVal
  elsif arr.count == 1
    return boolVal
  else
    i = 0
    j = 0
    for i in 0 ... arr.size 
       for j in 0 ... arr.size
         if i != j
           if (arr[i] + arr[j]) == n 
             boolVal = true
           end 
         end 
       end
    end
  end
  return boolVal
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  vowels = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
  if s[0] =~ /[[:alpha:]]/
    if !(vowels.include? s[0])
      return true
    else 
      return false
    end
  else 
    return false 
  end 
end

def binary_multiple_of_4? s
  if s == '' 
    return false
  elsif s.chars.all? {|c| c =~ /[01]/}
    return (( s.to_i(base=2) % 4 ) == 0)  
  else
    return false
  end
end

# Part 3

class BookInStock
   
  def initialize(isbn1, price1)
    unless isbn1.is_a?(String)
      raise ArgumentError.new("isbn must be a string")
    end
    unless isbn1 != ''
      raise ArgumentError.new("isbn must be a string")
    end 
    unless  price1.is_a?(Float)
      raise ArgumentError.new("price must be a float")
    end
    if (price1 <= 0)
      raise ArgumentError.new("Price must be > 0")
    else 
      @isbn = isbn1
      @price = price1
    end 
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(str)
    @isbn = str
  end

  def price
    @price
  end
   
  def price=(flt)
    @price = flt
  end
   
end
