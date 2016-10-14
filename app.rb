require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/player_attack'

class Battle < Sinatra::Base

enable :sessions


  before do
    @game = Game.instance
  end

  get '/' do
     erb :index
  end

  post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   @game = Game.create(player_1, player_2)
   redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/attack' do
    Attack.run(@game.current_opponent)
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  post '/punch' do
    Attack.punch(@game.current_opponent)
    Attack.heal(@game.current_turn)
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/punch'
    end
  end

  post '/kick' do
    Attack.kick(@game.current_opponent)
    if @game.game_over?
      redirect '/game-over'
    else
      if rand() < 0.5
        redirect '/kick'
      else
        redirect '/kicksleep'
      end
    end
  end

  get '/kicksleep' do
    erb :kicksleep
  end

  get '/attack' do
    erb :attack
  end

  get '/punch' do
    erb :punch
  end

  get '/kick' do
    erb :kick
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
