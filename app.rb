require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end
  
  post '/puppy' do
    @puppy = Puppy.new(params[:puppy])

    @all_puppy = Puppy.all
    erb :puppy
  end
end
