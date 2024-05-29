
require_relative 'ar'
require_relative 'models/category'
require_relative 'models/product'

10.times do
  # Create a new category
  category = Category.create(name: Faker::Commerce.department)

  # Generate 10 products for each category
  10.times do
    category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.between(1, 100)
    )
  end
end

puts "10 categories with 10 products each created successfully."
