require('sinatra')
require('sinatra/reloader')
require('./lib/frequency_check')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/returned_frequency') do
  @sentence = params.fetch('input_sentence')
  @word = params.fetch('input_word')
  @frequency_count = @sentence.get_frequency(@word)
  erb(:returned_frequency)
end
