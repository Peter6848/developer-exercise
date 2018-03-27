class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    mark_string = []
    punctuation_chars = ['!', '?', '.']

    str.split(' ').each do |word|
      if word.length > 4 && word == word.capitalize && punctuation_chars.include?(word[-1])
        mark_string << 'Marklar' + word[-1]
      elsif word.length > 4 && word == word.capitalize
        mark_string << 'Marklar'
      elsif word.length > 4 && punctuation_chars.include?(word[-1])
        mark_string << 'marklar' + word[-1]
      elsif word.length > 4
        mark_string << 'marklar'
      else
        mark_string << word
      end
    end
    mark_string.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    first = 0
    second = 1
    temp = first + second
    evens = []
    i = 2

    while i < nth
      first = second
      second = temp
      temp = first + second
      if temp.even?
        evens << temp
      end
      i += 1
    end
    evens.reduce(0) {|total, num| total + num}
  end

end
