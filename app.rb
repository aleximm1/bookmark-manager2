require 'sinatra/base'
require './lib/link'
require './lib/server'

ENV['RACK_ENV'] ||= 'development'
ENV['DATABASE_URL'] = 'postgres://fwktnisodzlfxg:a84187a327fda9ade642babfe5dc617b6b91f68ae11b7a0c704e4a7cca500b24@ec2-54-243-185-123.compute-1.amazonaws.com:5432/db9jql5h3vrtmh'


class Bookmark < Sinatra::Base

  get '/' do
   erb :bookmarkie
   redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end
end
