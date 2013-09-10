require 'thor'

class App < Thor
  desc 'hello', 'Prints hello world'

  def hello(word)
    puts "Hello #{word}"
  end
end

App.start ARGV
