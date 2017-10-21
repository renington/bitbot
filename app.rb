require 'json'
require 'sinatra'
require 'sinatra/activerecord'

require './config/database'

# Load Models
# require 'faq'
Dir["./app/models/*.rb"].each {|file| require file }

class App < Sinatra::Base
  get '/sinatra' do
    'Hello world!'
  end
end