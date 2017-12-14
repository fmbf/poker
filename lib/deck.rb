require_relative 'card.rb'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def shuffle_deck
    @cards.shuffle!
  end

  def populate_deck
    values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    values = values.map(&:to_sym)
    suits = [ :heart, :club, :spade, :diamond ]
    suits.each do |suit|
      values.each do |val|
        @cards << Card.new(suit, val)
      end
    end
  end

  def deal(amount)
    @cards.slice!(-amount, amount)
  end
end
