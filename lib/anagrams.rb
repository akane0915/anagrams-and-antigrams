class String
  define_method(:to_lower_case) do
    lower_case_string = self.downcase()
  end

  define_method(:is_a_word?) do
    array_of_words = self.to_lower_case().split(" ")
    is_a_word_array = []
    array_of_words.each() do |word|
      if word.include?("a") | word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u") | word.include?("y")
        is_a_word_array.push(word)
      else
        is_a_word_array.push("array contains string that is not a word")
      end
    end
    is_a_word_array
    unless is_a_word_array.include?("array contains string that is not a word")
      true
    else
      false
    end #End unless statement
  end #End method "is_a_word?"

  define_method(:remove_spaces_and_punc) do
    user_input_string = self
    no_spaces_or_punc_string = ""
    if user_input_string.is_a_word?() == true
      user_input_string = user_input_string.delete("/[.,\/#!$%\^&\*;:{}=\-_`~()]/s/g").delete("/\s{2,}/g").delete("[0-9]")
    else #at least one word contains no vowels
      user_input_string = "You need to input actual words!"
    end #ends is_a_word if statement
    user_input_string
  end


end #End class String
