require 'bundler/setup'
require_relative 'ar.rb'

categories = Category.includes(:products).all

categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  Product: #{product.name}, Price: $#{product.price}"
  end
end
