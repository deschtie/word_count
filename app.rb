require("sinatra")
#require("sinatra/reloader")
#also_reload("lib/**/*.rb")
require("./lib/word_counter")
require("pg")


set :bind, '0.0.0.0'
set :port, '3000'
#needed for nitrous.io to work

get("/") do
  erb(:index)
end

get("/word_count") do
  @word = params.fetch('word_to_count')
  @sentence = params.fetch('sentence')
  @word_total = params.fetch('word_to_count').word_counter(params.fetch('sentence'))
  erb(:word_count)
end

