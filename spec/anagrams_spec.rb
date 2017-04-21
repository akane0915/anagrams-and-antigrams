require ('rspec')
require ('anagrams.rb')

describe('String#to_lower_case') do
  it('takes user input string and downcases all letters') do
    expect(("A").to_lower_case()).to(eq("a"))
  end
end
