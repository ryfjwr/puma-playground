require 'sinatra'
require 'json'

configure { set :server, :puma }

class Pumatra < Sinatra::Base
  get "/" do
    content_type :json
    { :key1 => 'value1', :key2 => 'value2' }.to_json
  end

  run! if app_file == $0
end
