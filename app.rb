require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word')
also_reload('lib/**/*.rb')

get
