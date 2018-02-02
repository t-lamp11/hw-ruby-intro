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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
