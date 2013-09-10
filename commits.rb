require 'thor'

class App < Thor
  desc 'log', 'Prints commits details.'

  def log
    commits = [
      {
        author: 'ingilniero',
        message: 'First commit',
        date: '10-09-12 14:01:22'
      },
      {
        author: 'racoon',
        message: 'Add new feature',
        date: '09-04-04 22:26:39'
      },
      {
        author: 'gentleman',
        message: 'Fix ugly bug',
        date: '05-04-12 10:31:52'
      }
    ]

    commits.each do |commit|
      puts '---------------'
      puts "Author: #{commit[:author]}"
      puts "Message: #{commit[:message]}"
      puts "Date: #{commit[:date]}"
      puts ""
    end
  end
end

App.start ARGV
