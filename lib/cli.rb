class CommandLineInterface
  def greet
    puts 'Welcome at GOODpizza!!! Please choose your order!'
  end

  def choose_customer
    puts "Please enter your name"
    customer_name = gets.chomp
    selected_customer = Customer.find_by(name: customer_name)
    if selected_customer.nil?
      puts "User does not exist, create new user."
      return self.create_customer
    else
      puts "Hello #{selected_customer.name}"
      return selected_customer
    end
  end

  def manage_customer(customer)
    puts "Would you like to modify your user? (choose: 'update', 'delete', 'no')"
    answer = gets.chomp
    if answer == "update"
      self.update_customer(customer)
    elsif answer == "delete"
      self.delete_customer(customer)
    end
  end


  def create_customer
    puts "Please enter your name: "
    customer_name = gets.chomp
    puts "Please enter your address: "
    customer_address = gets.chomp
    return Customer.create(name: customer_name, address: customer_address)
  end

  def update_customer(customer)
    puts "Please enter new customer name:"
    new_name = gets.chomp
    puts "Please enter new address:"
    new_address = gets.chomp
    customer.update(name: new_name, address: new_address)
    puts "Updated customer #{customer.name}"
  end

  def delete_customer(customer)
    customer.destroy
    puts "Deleted customer #{customer.name}"
  end

  def print_menu
    puts "Menu:"
    Pizza.find_each do |pizza|
      puts "#{pizza.name} $#{pizza.price}"
    end
  end

  def choose_pizza(customer)
    puts "Please enter pizza name: "
    pizza_name = gets.chomp
    selected_pizza = Pizza.find_by(name: pizza_name)
    if selected_pizza.nil?
      puts "Please choose someting from the menu."
      self.choose_pizza(customer)
    else
      Order.create(pizza_id: selected_pizza.id, customer_id: customer.id)
      puts "You choose #{selected_pizza.name}, price $#{selected_pizza.price}"
    end
  end

  def exit_pizza(customer)
    puts "Thank you for your #{customer.name}! We will deliver your order to #{customer.address}."
  end

end
