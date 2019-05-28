require_relative '../config/environment'
Dir["../lib/model" "*.rb"].each{|file| require file}

cli = CommandLineInterface.new
cli.greet
