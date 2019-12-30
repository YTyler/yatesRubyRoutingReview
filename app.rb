require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
	@words = Word.all
	erb(:dictionary)
end

get('/dictionary') do
	@words = Word.all
	erb(:dictionary)
end

post('/dictionary') do
	
end

get('/dictionary/:id') do
	@word = Word.look_up(params(:id).to_i)
	erb(:word_page)
end

get('/dictionary/new') do
	erb(:new_word)
end
