require 'sinatra/base'
require 'sequel'
require 'yaml'

require File.expand_path('../models/facebook_account', __FILE__)

class FacebookExample < Sinatra::Base

  get '/' do

  end

  get '/facebook/auth' do

  end

  get '/facebook/callback' do

  end

end