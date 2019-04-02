require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    latinizer = PigLatinizer.new(params[:phrase])
    @answer = latinizer.change
    erb :result
  end

  # post '/piglatinize' do
  #   status 200
  #   erb :result
  # end


end
