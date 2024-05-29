# challenge_read.rb
require_relative 'ar'
require_relative 'models/product'
require_relative 'models/category'

# Find any product
product = Product.first
puts "Product: #{product.inspect}"

# Columns in the products table (recorded in product.rb)
# Columns: id, name, price, stock_quantity, category_id

# Total number of products
puts "Total number of products: #{Product.count}"

# Names of all products above $10 with names that begin with 'C'
products_above_10 = Product.where('price > ? AND name LIKE ?', 10, 'C%')
puts "Products above $10 with names starting with 'C': #{products_above_10.pluck(:name)}"

# Total number of products with low stock quantity
low_stock_products = Product.where('stock_quantity < ?', 5).count
puts "Total number of products with low stock quantity: #{low_stock_products}"

# Find the name of the category associated with one of the products
category_name = product.category.name
puts "Category name associated with product: #{category_name}"

# Find a specific category and build a new product
category = Category.find(1)
new_product = category.products.create(name: 'New Product', price: 20.0, stock_quantity: 10)
puts "New Product: #{new_product.inspect}"

# Find all products in a specific category over a certain price
products_in_category_over_price = category.products.where('price > ?', 15)
puts "Products in category over $15: #{products_in_category_over_price.pluck(:name)}"
