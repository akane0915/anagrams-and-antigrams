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
    expect(("bA").is_a_word?()).to(eq(true))
  end
end
