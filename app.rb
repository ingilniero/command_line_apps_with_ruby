require 'thor'

class App < Thor
  desc 'hello', 'Prints hello world'

  def hello
    puts "Hello world"
  end
end

App.start ARGV
