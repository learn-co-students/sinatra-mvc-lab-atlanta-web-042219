require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = PigLatinizer.new
    @new_text = text.piglatinize(params[:user_phrase])
    erb :piglatinized
  end


end
