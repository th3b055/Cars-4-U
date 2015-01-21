require 'bundler'
Bundler.require
require_relative './models/quiz'

class MyApp < Sinatra::Base
	SCORE = 0

  get '/' do
  	@quiz = Quiz.new
    erb :index
  end

  get '/question1' do
  	erb :question1
  end

  get '/question2' do
  	if params[:answer]=="A"
  		SCORE += 10
  	end
  	erb :question2
  end

  get '/question3' do
  	 if params[:answer]=="D"
      SCORE += 10
      end
    erb :question3
  end

  get '/question4' do
     if params[:answer]=="B"
       SCORE += 10
       end
    erb :question4
  end

 get '/question5' do
     if params[:answer]=="C"
       SCORE += 10
       end
    erb :question5
  end

 get '/question6' do
     if params[:answer]=="C"
       SCORE += 10
       end
    erb :question6
  end

  get '/question7' do
     if params[:answer]=="D"
       SCORE += 10
       end
    erb :question7
  end

  get '/question8' do
     if params[:answer]=="C"
       SCORE += 10
       end
    erb :question8
  end

  get '/question9' do
     if params[:answer]=="A"
       SCORE += 10
       end
    erb :question9
  end

  get '/question10' do
     if params[:answer]=="B"
       SCORE += 10
       end
    erb :question10
  end

    get '/question11' do
     if params[:answer]=="B"
       SCORE += 10
       end
    redirect '/results'
  end

    get '/results' do 
        SCORE
      erb :results
  end
 
end