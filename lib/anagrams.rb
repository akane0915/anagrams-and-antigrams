class String
  define_method(:to_lower_case) do
    lower_case_string = self.downcase()
  end
  #######################################
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
    end
  end
  #######################################
  define_method(:remove_spaces_and_punc) do
    user_input_string = self.to_lower_case()
    no_spaces_or_punc_string = user_input_string.delete("/[.,\/#!$%\^&\*;:{}=\-_`~()]/s/g").delete("/\s{2,}/g").delete("[0-9]")
  end
  #######################################
  define_method(:anagrams?) do |string_two|
    string_one = self
    result = false
    if string_one.chars().sort().join() == string_two.chars().sort().join()
      result = true
    end
    result
  end
  #######################################
  define_method(:palindrome?) do
    result = false
    if self == self.reverse()
      result = true
    end
    result
  end
  #######################################
  define_method(:antigrams?) do |string_two|
    string_one_array = self.split("")
    string_two_array = string_two.split("")
    result = true
    string_one_array.each() do |letter|
      if string_two_array.include?(letter)
        result = false
      end
    end
    result
  end
  #######################################
  define_method(:master_method) do |string_two|
    string_one = self
    result = ""
    #Check if strings are words
    if string_one.is_a_word?() == false
      result = "You need to input actual words!"
    elsif string_two.is_a_word?() == false
      result = "You need to input actual words!"
    else #both strings are words
      string_one = string_one.remove_spaces_and_punc()
      string_two = string_two.remove_spaces_and_punc()
      #Check if strings are anagrams
      if string_one.anagrams?(string_two) == false
        result = "These words are not anagrams."
        #Check if words are antigrams
        if string_one.antigrams?(string_two) == true
          result = "These words are not anagrams and have no letter matches so they are antigrams."
        end
      elsif string_one.anagrams?(string_two) == true
        result = "These words are anagrams."
        #Check if each string is a palindrome
        if string_one.palindrome?() == true
          result = "These words are anagrams and at least one word is a palindrome."
        elsif string_two.palindrome?() == true
          result = "These words are anagrams and at least one word is a palindrome."
        end
        result
      end
      result
    end
    result
  end
end #End class String
