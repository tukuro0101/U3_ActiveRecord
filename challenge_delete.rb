# challenge_destroy.rb
require_relative 'ar'
require_relative 'models/product'

# Find and delete one of the products created in challenge_create.rb
product_to_delete = Product.find_by(name: 'Product1')
product_to_delete.destroy if product_to_delete
puts "Deleted Product: #{product_to_delete.inspect}"
