require 'thor'

class App < Thor
  desc 'log', 'Prints commits details.'
  option :format

  def log(keyword=nil)
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

    commits_to_be_listed = if keyword.nil?
                             commits
                           else
                             commits.select { |commit| commit[:author].downcase.include? keyword.downcase }
                           end

    commits_to_be_listed.each do |commit|
      if options[:format].nil?
        print_default commit
      else options[:format] == 'oneline'
        print_oneline commit
      end
    end
  end

  private

  def print_default(commit)
      puts '---------------'
      puts "Author: #{commit[:author]}"
      puts "Message: #{commit[:message]}"
      puts "Date: #{commit[:date]}"
      puts ""
  end

  def print_oneline(commit)
    puts %Q{#{commit[:message]}}
  end
end

App.start ARGV
