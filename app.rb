require 'sinatra'

class Battle < Sinatra::Base
  get "/" do
    "hello Battle!"
  end

  run! if app_file = $0
end
