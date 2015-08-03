require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end
  set :views, proc {File.join(root, '..', 'views') }


  get '/create' do
  	@visitor = params[:name]
  	erb :index1
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
