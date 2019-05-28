require "pry"
class CommandLineInterface


  
  def greet
    puts 'Welcome!!! Please choose your order!'
  end

##as a customer I want to be given pizza menu
  def pizza_menu
    puts'What pizza would you like to order?'

    Pizza.all.select do |pizza|
      pizza.customers = self
      binding.pry
    end
  end
end

##as a customer i should be able to edit my order
##as a customer i want to get my order set up
##as a customer i want to able to delete my order
