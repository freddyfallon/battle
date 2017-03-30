require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    @player_2 = Player.new(params[:player_2])
    @game = Game.create(@player_1,@player_2)
    redirect '/player_1_turn'
  end

  before do
    @game = Game.instance
  end
  
  get '/player_1_turn' do
    erb(:player_1_turn)
  end

  get '/attack_player_2' do
    @game.attack(@game.other_player)
    @game.switch_turns
    erb(:attack_player_2)
  end

    # start the server if ruby file executed directly
    run! if app_file == $0

end
