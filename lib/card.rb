
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    raise ArgumentError if @value < 1 || @value > 13
    case @value
      when 1
        @value = "Ace"
      when 11
        @value = "Jack"
      when 12 
        @value = "Queen"
      when 13
        @value = "King"
    end


    @suit = suit
    raise ArgumentError if ![:hearts, :spades, :clubs, :diamonds].include?(@suit)
    
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
