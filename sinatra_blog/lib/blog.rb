require 'sinatra/base'
require 'ostruct'
require 'time'

class Blog < Sinatra::Base
  #set :root, File.expand_path('../..', _FILE_)

  get('/') do
    markdown "# A Headline"
  end
end

Blog.run!
