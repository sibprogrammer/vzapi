require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' if development?
require './vz_api'

API_VERSION = '1.0.0'

get '/version' do
  json version: API_VERSION
end

get '/info' do
  json(
    api_version: API_VERSION,
    details: VzApi.info
  )
end

get '/containers' do
  json VzApi.containers_list
end
