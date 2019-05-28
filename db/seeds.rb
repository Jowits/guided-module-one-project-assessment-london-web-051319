# # pizza
#
margherita = Pizza.create({name: 'margherita', price: 8.50})
quattro_fromaggi = Pizza.create({name: 'quattro_fromaggi', price: 8.50})
pepperoni = Pizza.create({name:'pepperoni', price: 9.00})
marinara = Pizza.create({name: 'marinara', price: 6.70})
rustica = Pizza.create({name:'rustica',  price: 7.50})
vegana = Pizza.create({name: 'vegana',  price: 7.00})
diavola = Pizza.create({name: 'diavola', price: 9.50})
gorgonzola = Pizza.create({name:'gorgonzola', price: 9.50})
spinaci = Pizza.create({name:'spinaci', price: 7.50})
parma = Pizza.create({name:'parma', price: 9.50})
#
 # # customer
#
customer1 = Customer.create({name: "John Snow", address: "2 Winter North,LONDON N80WS"})
customer2 = Customer.create({name: "Kate Horn", address: "564 Park Avenue LONDON BD71 8QO"})
customer3 = Customer.create({name: "Meg May", address: "138 Highfield Road LONDON NN85 2DH"})
customer4 = Customer.create({name: "Forrest Graves", address: "531 Mill Lane LONDON RM90 1BI"})
customer5 = Customer.create({name: "Shane Dickson", address: "17 Green Lane LONDON NR38 6EI"})
customer6 = Customer.create({name: "Jennie Chung", address: "656 Station Road LONDON BN50 7ZQ"})
customer7 = Customer.create({name: "Coby Doyle", address: "571 Broadway LONDON KW2 8UX"})
customer8 = Customer.create({name: "Kelly Dunn", address: "931 Park Avenue LONDON CW37 7TL"})
customer9 = Customer.create({name: "Coco Gross", address: "7618 Manor Road LONDON WR36 1TZ"})
customer10 = Customer.create({name: "Maisha Wilcox", address: "383 Mill Lane LONDON IV31 7XO"})
# customer11 = Customer.new("Piper Terry", address: "27 Victoria Street LONDON NE65 4RI"})
# customer12 = Customer.new("Sonny Holding", address: "7496 Green Lane LONDON SP42 9WI"})
# customer13 = Customer.new("Mike Erickson", address: "34 Richmond Road LONDON LD73 5UW"})
# customer14 = Customer.new("Melinda Adam", address: "27 Victoria Street LONDON DE65 4RI"})
# customer15 = Customer.new("Rami Neville", address: "771 Manchester Road LONDON PR76 7FB"})
#
#
# # order

order1 = Order.create({pizza_id: margherita.id, customer_id: customer1.id})
order2 = Order.create({pizza_id: parma.id, customer_id: customer2.id})
order3 = Order.create({pizza_id: vegana.id, customer_id: customer3.id})
order4 = Order.create({pizza_id: diavola.id, customer_id: customer4.id})
order5 = Order.create({pizza_id: rustica.id, customer_id: customer5.id})
order6 = Order.create({pizza_id: pepperoni.id, customer_id: customer6.id})
order7 = Order.create({pizza_id: spinaci.id, customer_id: customer7.id})
order8 = Order.create({pizza_id: quattro_fromaggi.id, customer_id: customer8.id})
order9 = Order.create({pizza_id: margherita.id, customer_id: customer1.id})
order10 = Order.create({pizza_id: parma.id, customer_id: customer5.id})
order11 = Order.create({pizza_id: diavola.id, customer_id: customer9.id})
