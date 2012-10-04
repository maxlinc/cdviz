require 'rspec/autorun'
require 'spork'

Spork.prefork do
  RSpec.configure do |config|
  end
end

Spork.each_run do
end
