
class String

  define_method(:word_counter) do |sentence|
    word_to_count = self
    word_total = 0
    sentence = sentence.downcase().delete('^a-z ')
    words = sentence.split()
    words.each() do |word|
      if word == (word_to_count)
        word_total += 1
      end
    end
    word_total
  end
end

