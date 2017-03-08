require 'sinatra/base'
require_relative 'app/models/link'

class App < Sinatra::Base

  get '/' do
    redirect('/links')
  end

  get '/links' do
    @links = Link.all
    erb :index
  end
end
