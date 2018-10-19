require 'sinatra/base'
require 'rspec'
require 'pry'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:names_form)
  end

  post '/names_form' do
    player_1 = Player.new(params[:player1])
    player_2 = Player.new(params[:player2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.not_active)
    redirect 'game_over' if @game.game_over?
    @game.switch_turn
    erb(:attack)
  end

  get '/game_over' do
    erb(:game_over)
  end
end
