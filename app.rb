require 'thor'

class App < Thor
  def hello
    puts "Hello world"
  end
end

App.start ARGV
