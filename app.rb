require 'sinatra'
require 'json'

configure { set :server, :puma }

get "/" do
  content_type :json
  { :key1 => 'value1', :key2 => 'value2' }.to_json
end
