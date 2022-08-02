require 'rails_helper'

RSpec.describe Supermarket, type: :model do
  describe 'relationships' do
    it { should have_many :customers }
  end

  describe 'instance methods' do
    # it 'will return the three most popular items that are available in a supermarket' do
    #   @wholefoods = Supermarket.create!(name: "Whole Foods", location: "Manhattan")
      
    #   @sally = Customer.create!(name: "Sally", supermarket_id: @wholefoods.id)
    #   @jenny = Customer.create!(name: "Jenny", supermarket_id: @wholefoods.id)
    #   @greg = Customer.create!(name: "Greg", supermarket_id: @wholefoods.id)
    #   @broccoli = Item.create!(name: "Broccoli", price: 3)
    #   @potato = Item.create!(name: "Potato", price: 2)
    #   @popcorn = Item.create!(name: "Popcorn", price: 4)
    #   @soda = Item.create!(name: "Soda", price: 2)
    #   @spaghetti = Item.create!(name: "Spaghetti", price: 6)
      
    #   @sally_potato = CustomerItem.create!(customer_id: @sally.id, item_id: @potato.id)
    #   @sally_popcorn = CustomerItem.create!(customer_id: @sally.id, item_id: @popcorn.id)
    #   @sally_soda = CustomerItem.create!(customer_id: @sally.id, item_id: @soda.id)
    #   @sally_spaghetti = CustomerItem.create!(customer_id: @sally.id, item_id: @spaghetti.id)
    #   @jenny_popcorn = CustomerItem.create!(customer_id: @jenny.id, item_id: @popcorn.id)
    #   @jenny_soda = CustomerItem.create!(customer_id: @jenny.id, item_id: @soda.id)
    #   @jenny_spaghetti = CustomerItem.create!(customer_id: @jenny.id, item_id: @spaghetti.id)
    #   @jenny_broccoli = CustomerItem.create!(customer_id: @jenny.id, item_id: @broccoli.id)
    #   @greg_popcorn = CustomerItem.create!(customer_id: @greg.id, item_id: @popcorn.id)
    #   @greg_soda = CustomerItem.create!(customer_id: @greg.id, item_id: @soda.id)
    #   @greg_spaghetti = CustomerItem.create!(customer_id: @greg.id, item_id: @spaghetti.id)

    #   @wholefoods_broccoli = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @broccoli.id)
    #   @wholefoods_potato = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @potato.id)
    #   @wholefoods_popcorn = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @popcorn.id)
    #   @wholefoods_soda = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @soda.id)
    #   @wholefoods_spaghetti = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @spaghetti.id)

    #   expect(@wholefoods.most_popular).to eq([@popcorn, @spaghetti, @soda])
    # end
  end
end