require 'bundler/setup'
Bundler.require(:default)

require 'sinatra/base'
require 'sinatra/redis'

class App < Sinatra::Base
  base = File.dirname(__FILE__)
  set :root, base

  configure do
    set :redis, ENV["REDISTOGO_URL"]
    puts redis
  end

  helpers do

  end

  # Function allows both get / post.
  def self.get_or_post(path, opts={}, &block)
    get(path, opts, &block)
    post(path, opts, &block)
  end   

  get '/' do
    @page_title = 'Page Title'
    @local_uploads = settings.redis.get("something")
  end
end