require ('sinatra')
require ('sinatra/reloader')
require('rspec')
require ('./lib/anagrams')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/results') do
  @string_one = params.fetch('string_one')
  @string_two = params.fetch('string_two')
  @results = @string_one.master_method(@string_two)
  erb(:results)
end
