require('rspec')
require('word_counter')

describe(String) do

  describe("#word_counter") do
    it("will search for the requested word in the entered sentence") do
      word_to_count = "mad"
      sentence = "I am very mad, mad, mad this won't work"
      expect(word_to_count.word_counter(sentence)).to(eq(3))
    end
  
  
    it("will count the frequency of the word in the sentence")do
      word_to_count = "mad"
        sentence = "I am very mad, mad, mad this won't work"
        expect(word_to_count.word_counter(sentence)).to(eq(3))
      end

    it("will return the number of times the word appears") do
        word_to_count = "mad"
        sentence = "I am very mad, mad, mad this won't work"
        expect(word_to_count.word_counter(sentence)).to(eq(3))
    end
  end
end