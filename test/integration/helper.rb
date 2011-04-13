require "capybara/dsl"
require File.expand_path('../helper', File.dirname(__FILE__))

class Cutest::Scope
  include Capybara
end

Capybara.app = Main