# challenge_update.rb
require_relative 'ar'
require_relative 'models/product'

# Find all products with a stock quantity greater than 40
products_to_update = Product.where('stock_quantity > ?', 40)
products_to_update.each do |product|
  product.stock_quantity += 1
  product.save
end
puts "Updated products: #{products_to_update.pluck(:name, :stock_quantity)}"
