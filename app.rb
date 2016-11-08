require 'sinatra'
require 'json'
require 'logger'

configure do
  set :server, :puma 
  set :logger, Logger.new(STDOUT)
end

class Pumatra < Sinatra::Base
  get "/" do
    content_type :json
    { :key1 => 'value1', :key2 => 'value2' }.to_json
  end

  run! if app_file == $0
end
