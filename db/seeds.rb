# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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



