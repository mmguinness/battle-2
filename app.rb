require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
    enable :sessions
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        erb(:index)
    end

    post '/names' do
        $player_one = Player.new(params[:player_one])
        $player_two = Player.new(params[:player_two])
        # session[:player_one] = 
        # session[:player_two] = params[:player_two] 
        redirect '/play'
    end

    get '/play' do
        @player_one = $player_one.name
        @player_two = $player_two.name
        # @player_one = session[:player_one]
        # @player_two = session[:player_two]
        @attack = session[:attack]
        erb(:play)
    end

    post '/attack' do
        session[:attack] = true
        $player_two.reduce
        redirect '/play'
    end

    run! if app_file == $0
end
