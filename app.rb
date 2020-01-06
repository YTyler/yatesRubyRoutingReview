require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word')
require('./lib/definition')
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
	name = params[:word_name]

	word = Word.new(name, nil)
	word.keep
	@words = Word.all

	erb(:dictionary)
end

get('/dictionary/new') do
	erb(:new_word)
end

get('/dictionary/:id') do
	@word = Word.look_up(params[:id].to_i)
	erb(:word_page)
end
