require 'sinatra'
require 'sinatra/reloader'

require 'httparty'
require 'nokogiri'
require 'uri'

get '/' do
  send_file "index.html"
end

#code
#/post => 글쓸 수 있는 곳
get '/post' do
  erb :post
end

#/content=> 글 완료
get '/content' do
  @title = params[:title]
  @contents = params[:content]
  CSV.open('writing.csv','a+',encoding:'utf-8') do |csv|
  csv<<[@title, @contents]
  end
  erb :content
end
