require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
  erb(:scrabble_score)
end

get('/results') do
  @word = params.fetch('word')
  @total = @word.scrabble_score()
  erb(:results)
end
