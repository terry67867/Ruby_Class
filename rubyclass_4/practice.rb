require "sinatra"
require "sinatra/reloader"
###
require "nokogiri"
require "uri"
require "httpary"

get '/exercise' do
  @exercise = params[:selection]
  erb :exercise
end

get '/showResult' do
  @Result = params[:Result]
  erb :showResult
end
