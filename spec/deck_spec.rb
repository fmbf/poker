require 'deck'
require 'rspec'

describe "Deck" do
  let(:card) { double("Card") }
  subject(:deck) { Deck.new }

  describe "#initialize" do

    it "with empty array for cards" do

      expect(deck.cards).to eq([])
    end

  end

  describe "Deck methods" do
    before(:each) do
      deck.populate_deck
    end

    describe "#shuffle_deck" do
      it "shuffles deck" do
        expect(deck.cards).to receive(:shuffle!)
        deck.shuffle_deck
      end
    end

    describe "#populate_deck" do
      it "puts 52 elements in deck" do
        # deck.populate_deck
        expect(deck.cards.length).to eq(52)
      end

      it "elements are of Card class" do
        # deck.populate_deck
        expect(deck.cards).to all(be_instance_of(Card) )
      end
    end


    describe "#deal" do
      it "deals 'n' ammount of cards" do
        # deck.populate_deck
        expect(deck.deal(5).length).to eq(5)
      end

      it "all cards are Card class " do
        # deck.populate_deck
        expect(deck.deal(5)).to all(be_instance_of(Card) )
      end
    end
  end

end
