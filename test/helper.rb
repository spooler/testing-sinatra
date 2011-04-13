Testing = true

require File.expand_path '../app.rb',  File.dirname(__FILE__)

prepare do
  Ohm.connect url: "redis://:secret@localhost:6381/#{ defined?(Testing) ? '1' : '0' }"
  Ohm.flush
end