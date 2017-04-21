require ('rspec')
require ('anagrams.rb')

describe('String#to_lower_case') do
  it('takes input string and downcases all letters') do
    expect(("A").to_lower_case()).to(eq("a"))
  end
end

describe('String#is_a_word?') do
  it('takes input string and determines if all words contain a vowel') do
    expect(("bc").is_a_word?()).to(eq(false))
  end
end

describe('String#is_a_word?') do
  it('takes input string and determines if all words contain a vowel') do
    expect(("bAt").is_a_word?()).to(eq(true))
  end
end

describe('String#is_a_word?') do
  it('takes input string and determines if all words contain a vowel') do
    expect(("a c.at").is_a_word?()).to(eq(true))
  end
end

describe('String#remove_spaces_and_punc') do
  it('takes input string and removes everything that is not a lower case letter (punctuation, numbers, spaces)') do
    expect(("a c.at").remove_spaces_and_punc()).to(eq("acat"))
  end
end

describe('String#remove_spaces_and_punc') do
  it('takes input string and removes everything that is not a lower case letter (punctuation, numbers, spaces)') do
    expect(("a.b2 d").remove_spaces_and_punc()).to(eq("abd"))
  end
end

describe('String#anagrams?') do
  it('takes two input strings and checks if they are anagrams') do
    expect(("ruby").anagrams?("bury")).to(eq(true))
  end
end

describe('String#anagrams?') do
  it('takes two input strings and checks if they are anagrams') do
    expect(("rub").anagrams?("bury")).to(eq(false))
  end
end

describe('String#palindrome?') do
  it('takes one input string and checks if it is a palindrome') do
    expect(("hannah").palindrome?()).to(eq(true))
  end
end

describe('String#palindrome?') do
  it('takes one input string and checks if it is a palindrome') do
    expect(("abc").palindrome?()).to(eq(false))
  end
end

describe('String#antigrams?') do
  it('takes two input strings and checks if they are antigrams') do
    expect(("abc").antigrams?("def")).to(eq(true))
  end
end

describe('String#antigrams?') do
  it('takes two input strings and checks if they are antigrams') do
    expect(("abc").antigrams?("defa")).to(eq(false))
  end
end

describe('String#master_method') do
  it('calls master_method to ensure all words contain a vowel') do
    expect(("Ab").master_method("Cb")).to(eq("You need to input actual words!"))
  end
end

describe('String#master_method') do
  it('calls master_method to check if words are anagrams') do
    expect(("E.at").master_method("Tea")).to(eq("These words are anagrams."))
  end
end

describe('String#master_method') do
  it('calls master_method to check (given words are anagrams) if each word is a palindrome') do
    expect(("Ha.nnah").master_method("an ahn2h")).to(eq("These words are anagrams and at least one word is a palindrome."))
  end
end

describe('String#master_method') do
  it('calls master_method to check (given words are not anagrams) if words are antigrams') do
    expect(("Ha.n").master_method("Ber.")).to(eq("These words are not anagrams and have no letter matches so they are antigrams."))
  end
end
