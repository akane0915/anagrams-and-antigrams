class String
  define_method(:to_lower_case) do
    lower_case_string = self.downcase()
  end

  define_method(:is_a_word?) do
    array_of_words = self.to_lower_case.split(" ")
    new_array = []
    array_of_words.each() do |word|
      if word.include?("a") | word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u") | word.include?("y")
        new_array.push(word)
      else
        new_array.push("array contains string that is not a word")
      end
    end
    new_array
    unless new_array.include?("array contains string that is not a word")
      true
    else
      false
    end #End unless statement
  end #End method "is_a_word?"



end #End class String
