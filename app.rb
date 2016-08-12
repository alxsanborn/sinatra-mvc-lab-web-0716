require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_translation = PigLatinizer.new
    new_translation.to_pig_latin(params["user_phrase"])
  end
end
