require 'rspec'
require 'card'



describe 'Card' do
  subject(:card) { Card.new(:club, :J)}

  describe '#initialize' do

    it 'with a suit' do
      expect(card.suit).to eq(:club)
    end

    it 'with a value' do
      expect(card.value).to eq(:J)
    end


  end



end
