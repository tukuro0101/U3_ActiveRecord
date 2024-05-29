# models/product.rb
require 'active_record'

class Product < ActiveRecord::Base
  belongs_to :category

  # Add validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :stock_quantity, presence: true
  validates :category_id, presence: true

  # Columns in the products table
  # t.string :name
  # t.decimal :price
  # t.integer :stock_quantity
  # t.integer :category_id
end
