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
  it('takes input string and removes everything that is not a lower case letter') do
    expect(("a c.at").remove_spaces_and_punc()).to(eq("acat"))
  end
end

describe('String#remove_spaces_and_punc') do
  it('takes input string and removes everything that is not a lower case letter') do
    expect(("A. bd").remove_spaces_and_punc()).to(eq("You need to input actual words!"))
  end
end
