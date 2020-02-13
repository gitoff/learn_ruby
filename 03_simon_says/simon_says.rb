#write your code here
def echo(string)
  string
end

def shout(s)
  s.upcase
end

def repeat(s, n=2)
  string = ''
  n.times {
    |x|
    if x == n - 1
      string += s
    else
      string += s + " "
    end
  }
  return string
end

def start_of_word(string, num)
  return string.slice(0..num - 1)
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  little_words = ['and', 'to', 'the', 'or', 'in', 'over']
  words = string.split(' ')
  words.each_index { 
    |i|
    if i > 0 and little_words.include?(words[i])
      # don't do anything to word
    else
      words[i] = words[i].capitalize
    end

  }
  return words.join(' ')
end