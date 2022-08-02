require 'rails_helper'

RSpec.describe 'Customer Show' do
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
  end
  describe 'As a visitor' do
    describe 'When I visit a customer show page' do
      it 'I see a list of its items and the name of the supermarket that it belongs to' do
        visit "/customers/#{@john.id}"

        within "#item-#{@broccoli.id}" do
          expect(page).to have_content(@broccoli.name)
        end

        within "#item-#{@soda.id}" do
          expect(page).to have_content(@soda.name)
        end

        expect(page).to_not have_content(@potato.name)
        expect(page).to_not have_content(@popcorn.name)
        expect(page).to_not have_content(@spaghetti.name)
        expect(page).to have_content(@traderjoes.name)
      end
    end
  end
end