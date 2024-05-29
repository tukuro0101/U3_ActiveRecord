# challenge_create.rb
require_relative 'ar'
require_relative 'models/product'

# Create products using different methods
product1 = Product.new(name: 'Product1', price: 15.0, stock_quantity: 20, category_id: 1)
product1.save

product2 = Product.create(name: 'Product2', price: 25.0, stock_quantity: 30, category_id: 1)

product3 = Product.create! do |p|
  p.name = 'Product3'
  p.price = 35.0
  p.stock_quantity = 40
  p.category_id = 1
end

# Create a product with missing required columns
invalid_product = Product.new(name: 'InvalidProduct')
if invalid_product.save
  puts "Invalid product saved!"
else
  puts "Errors: #{invalid_product.errors.full_messages.join(', ')}"
end
