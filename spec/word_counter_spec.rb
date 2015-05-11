require('rspec')
require('word_counter')

describe(String) do

  describe("#word_counter") do
    it("will take the user input for word and sentence, then returns how frequently the word appears in the sentence") do
      word_to_count = "hello"
      sentence = "Hello hello hello this is just a test"
      expect(word_to_count.word_counter(sentence)).to(eq(3))
    end
  end
  
end