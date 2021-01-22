require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, '7491befb76796f87bda2a26cf683c7e669799e5f047c' \
                         '849f4c11c2321edf09f38321aacb0dbb82e5a02f14d3' \
                         '470be4e14dd535663170570b694c7c67ffe52b84'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
end
