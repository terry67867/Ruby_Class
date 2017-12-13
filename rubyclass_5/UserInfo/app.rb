require 'sinatra'
require 'sinatra/reloader'
require 'nokogiri'
require 'httparty'
require 'uri'
require 'csv'
require 'date'

get '/signup' do
  erb :signup
end

get '/complete' do
  @id = params[:email]
  @pwd = params[:pwd]
#  @users= []
#    CSV.foreach('user.csv',encoding: 'utf-8') do |row|
#      @users << row
#  end
  CSV.open('user.csv','a+') do |csv|
  csv<<[@id.to_s, @pwd]
  end
  erb :complete
end
