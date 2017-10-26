require 'dotenv/load'
require 'sinatra'

# NOTE: ENV variables should be set directly in terminal for testing on localhost

# Talk to Facebook
get '/webhook' do
  params['hub.challenge'] if ENV["VERIFY_TOKEN"] == params['hub.verify_token']
end

get "/" do
  params['hub.challenge'] if ENV["VERIFY_TOKEN"] == params['hub.verify_token']
end