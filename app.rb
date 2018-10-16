require 'sinatra/base'

class Battle < Sinatra::Base
  get "/" do
    "Testing infrastructure working!"
  end
  get "/names" do
    erb(:names_form)
  end
  post "/play" do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
end
