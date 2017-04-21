require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagrams path', {:type => :feature}) do
  it ('Takes two user input string and determines if they are anagrams, antigrams, and pallidromes') do
    visit('/')
    fill_in('string_one', :with => 'Ha.n')
    fill_in('string_two', :with => 'Ber.')
    click_button('Submit!')
    expect(page).to have_content('These words are not anagrams and have no letter matches so they are antigrams.')
  end
end
