require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/rps")
also_reload('./models/*')

#?? what does this do?
get '/welcome' do
  erb(:welcome)
end

get '/check_winner/:hand1/:hand2' do
  rps_game = Game.new(params[:hand1], params[:hand2])
  #does the input need to be converted to a string?
  @game = rps_game.check_winner()
  #?? Where did this variable come from?
  erb(:result)
end

#how do I run pry on this? (tried, but unable to)
