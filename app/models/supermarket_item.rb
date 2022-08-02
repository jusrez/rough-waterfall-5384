class SupermarketItem < ApplicationRecord
  belongs_to :supermarket
  belongs_to :item
end