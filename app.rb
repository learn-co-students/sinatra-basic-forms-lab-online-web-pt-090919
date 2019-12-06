require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :create_puppy
  end
  
  get '/new' do
    erb :new
  end
  
  # post '/new' do
  #   @name = params[:name]
  #   @breed = params[:breed]
  #   @age = params[:age]
  # end
  
  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    
    erb :display_puppy
  end

end
