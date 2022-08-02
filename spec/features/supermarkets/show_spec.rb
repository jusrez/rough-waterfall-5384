require 'rails_helper'

RSpec.describe 'Supermarket Show' do
  before :each do
    @traderjoes = Supermarket.create!(name: "Trader Joes", location: "Brooklyn")
    @wholefoods = Supermarket.create!(name: "Whole Foods", location: "Manhattan")

    @john = Customer.create!(name: "John", supermarket_id: @traderjoes.id)
    @greg = Customer.create!(name: "Greg", supermarket_id: @traderjoes.id)
    @sally = Customer.create!(name: "Sally", supermarket_id: @wholefoods.id)
    @jenny = Customer.create!(name: "Jenny", supermarket_id: @wholefoods.id)

    @broccoli = Item.create!(name: "Broccoli", price: 3)
    @potato = Item.create!(name: "Potato", price: 2)
    @popcorn = Item.create!(name: "Popcorn", price: 4)
    @soda = Item.create!(name: "Soda", price: 2)
    @spaghetti = Item.create!(name: "Spaghetti", price: 6)

    @john_broccoli = CustomerItem.create!(customer_id: @john.id, item_id: @broccoli.id)
    @john_soda = CustomerItem.create!(customer_id: @john.id, item_id: @soda.id)
    @greg_potato = CustomerItem.create!(customer_id: @greg.id, item_id: @potato.id)
    @sally_potato = CustomerItem.create!(customer_id: @sally.id, item_id: @potato.id)
    @jenny_popcorn = CustomerItem.create!(customer_id: @jenny.id, item_id: @popcorn.id)

    @traderjoes_broccoli = SupermarketItem.create!(supermarket_id: @traderjoes.id, item_id: @broccoli.id)
    @traderjoes_potato = SupermarketItem.create!(supermarket_id: @traderjoes.id, item_id: @potato.id)
    @traderjoes_popcorn = SupermarketItem.create!(supermarket_id: @traderjoes.id, item_id: @popcorn.id)
    @traderjoes_soda = SupermarketItem.create!(supermarket_id: @traderjoes.id, item_id: @soda.id)
    @traderjoes_spaghetti = SupermarketItem.create!(supermarket_id: @traderjoes.id, item_id: @spaghetti.id)
    @wholefoods_broccoli = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @broccoli.id)
    @wholefoods_potato = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @potato.id)
    @wholefoods_popcorn = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @popcorn.id)
    @wholefoods_soda = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @soda.id)
    @wholefoods_spaghetti = SupermarketItem.create!(supermarket_id: @wholefoods.id, item_id: @spaghetti.id)
  end
  describe 'As a visitor' do
    describe 'when i visit a supermarket show page' do
      it 'I see the name of that supermarket and a link to view all of the items that the supermarket has' do
        visit "/supermarkets/#{@traderjoes.id}"
        
        expect(page).to have_link("List of Trader Joes Items")
        expect(page).to_not have_link("List of Whole Food Items")
      end      
    end
  end
end