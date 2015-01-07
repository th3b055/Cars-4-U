require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/question1' do
  	erb :question1
  end

  get '/question2' do
  	erb :question2
  end

  get '/question3' do
  	erb :question3
  end

  get '/question4' do
  	erb :question4
  end
end