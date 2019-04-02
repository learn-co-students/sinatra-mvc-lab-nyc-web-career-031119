require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_words = PigLatinizer.new
    @translated_word = new_words.piglatinize(params["user_phrase"])
    erb :translated
  end
end
