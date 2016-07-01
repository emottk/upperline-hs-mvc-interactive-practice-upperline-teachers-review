require 'bundler'
Bundler.require
require_relative "models/model.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/meow' do
    erb :meow
  end

  post '/results' do
    @string = fun(params[:string])
    erb :results
  end
end
