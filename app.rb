require 'sinatra/base'


class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_one_name]
    @player_2_name = params[:player_two_name]
    p @player_1_name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
