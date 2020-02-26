
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    values = (1..13).to_a
    suits = %i[hearts spades clubs diamonds]

    @cards = []

    suits.each do |suit|
      values.each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    # returns a card
    index = rand(0..@cards.length)
    random_card = @cards[index]

    @cards.delete_at(index)
    return random_card
  end

  def shuffle
    # shuffles the deck
    return @cards.shuffle
  end

  def count
    return @cards.length
  end
end
