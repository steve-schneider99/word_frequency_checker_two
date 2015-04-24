class String
  define_method(:get_frequency) do |input_word|
      split_sentence = self.downcase.split(" ")
      downcase_input = input_word.downcase
      word_count = 0
      split_sentence.each do |word|
        if word.include?(downcase_input)
            word_count = word_count += 1
        else
        end
      end
  word_count
  end
end
