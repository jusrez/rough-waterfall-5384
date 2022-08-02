require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'relationships' do
    it { should belong_to :supermarket }
  end

  describe 'instance methods' do
    it 'calculates the total cost of a customers item' do
      @traderjoes = Supermarket.create!(name: "Trader Joes", location: "Brooklyn")
      @john = Customer.create!(name: "John", supermarket_id: @traderjoes.id)
      @broccoli = Item.create!(name: "Broccoli", price: 3)
      @soda = Item.create!(name: "Soda", price: 2)
      @john_broccoli = CustomerItem.create!(customer_id: @john.id, item_id: @broccoli.id)
      @john_soda = CustomerItem.create!(customer_id: @john.id, item_id: @soda.id)

      expect(@john.total_price).to eq(5)
    end
  end
end