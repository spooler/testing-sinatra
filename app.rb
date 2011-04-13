require 'haml'
require 'ohm'
require 'sass'
require 'sinatra'

Ohm.connect url: "redis://:secret@localhost:6381/#{ defined?(Testing) ? '1' : '0' }"

class Main < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/app/views'
  use Rack::Session::Cookie
  use Rack::Static, urls: ['/css', '/images', '/js'], root: File.expand_path('public', File.dirname(__FILE__))
  use Rack::MethodOverride

  

  get // do
    @specific_stylesheet_files = []
    @specific_javascript_files = []
    pass
   end
end

# Load application files
Dir['./app/**/*.rb'].each do |file|
  require file
end