#write your code here
def translate(string)
  words = string.split(" ")
  words.each_index {
    |i|
    if words[i].start_with?(/a|e|i|o|u/)
      words[i] = words[i] + 'ay'
    else
      remove = ''
      words[i].each_char {
        |c|
        if c.start_with?(/a|e|i|o|u/)
          if remove == 'q' or remove == 'sq'
            remove += 'u'
          end
          break
        else
          remove += c
        end
      }
      words[i] = words[i].delete_prefix(remove) + remove + 'ay'
    end
  }
  return words.join(' ')
  # if string.start_with?(/a|e|i|o|u/)
  #   return string + 'ay'
  # else
  #   remove = ''
  #   string.each_char {
  #     |c|
  #     if c.start_with?(/a|e|i|o|u/)
  #       break
  #     else
  #       remove += c
  #     end
  #   }
  #   return string.delete_prefix(remove) + remove + 'ay'
  # end
end