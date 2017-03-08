ENV['RACK_ENV']||= 'development'
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

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end
end
