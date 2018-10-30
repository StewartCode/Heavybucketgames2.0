require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/customer.rb' )
require_relative( '../models/game.rb' )
require_relative( '../models/interest.rb' )
require_relative( '../models/id_input.rb' )
require_relative( '../models/space.rb' )
also_reload( '../models/*' )

get '/heavybucketgames/games' do
   @games = Game.all()
  erb ( :"game/index" )
end

get '/heavybucketgames/games/shortlist' do
   @interests = Interest.all()
   @games = Game.all()
   @customers = Customer.all()
   @spaces = Space.all()
  erb ( :"game/shortlist" )
end
