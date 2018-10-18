require 'sinatra/base'
require 'rspec'
require 'pry'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:names_form)
  end

  post '/names_form' do
    player_1 = Player.new(params[:player1])
    player_2 = Player.new(params[:player2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.not_active)
    @game.switch_turn
    erb(:attack)
  end
end
