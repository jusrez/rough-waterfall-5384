require 'rails_helper'

RSpec.describe SupermarketItem, type: :model do
  describe 'relationships' do
    it { should belong_to :supermarket }
    it { should belong_to :item }
  end
end