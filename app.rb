require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pg = PigLatinizer.new
    @piglatin = pg.piglatinize(params[:user_phrase])

    erb :results
  end

end
