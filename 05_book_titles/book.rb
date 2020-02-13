class Book
  def title
    @title
  end
  #attr_reader :title

  # writer
  def title=(name)
    little_words = ['and', 'to', 'the', 'or', 'in', 'over', 'of', 'a', 'an']
    words = name.split(' ')
    @title = words.map.with_index { 
      |word, index| 
      if little_words.include?(word) and index > 0
        # don't do anything
        word
      else
        word.capitalize 
      end
    }.join(' ')
  end

end
