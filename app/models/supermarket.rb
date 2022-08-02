class Supermarket < ApplicationRecord
  has_many :customers
  has_many :supermarket_items
  has_many :items, through: :supermarket_items

  # def most_popular
    # items
    # .joins(:customer_items)
    # .limit(3)
  # end
end