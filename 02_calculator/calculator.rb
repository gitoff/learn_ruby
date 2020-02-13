#write your code here
def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(array)
  total = 0
  array.each do |element|
    total += element
  end
  return total
end

def multiply(n1, n2)
  return n1 * n2
end

def multiplies(array)
  total = 1
  array.each do |x|
    total *= x
  end
  return total
end

def power(num, exp)
  return num**exp
end

def factorial(n)
  if n == 0 or n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

