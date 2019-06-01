require_relative '../config/environment'
Dir["../lib/model" "*.rb"].each{|file| require file}

cli = CommandLineInterface.new
cli.greet
customer = cli.choose_customer
cli.manage_customer(customer)
cli.print_menu
cli.choose_pizza(customer)
cli.exit_pizza(customer)
