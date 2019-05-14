require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        pig = PigLatinizer.new()
        @stuff = pig.piglatinize(params[:user_phrase])
        erb :output
    end
end