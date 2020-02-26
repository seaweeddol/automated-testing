require_relative 'test_helper'

describe "deck" do
  # Write tests for the deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  before do
    @deck = Deck.new
  end
  
  describe "initialize" do
    it "should create a standard deck" do
      expect(@deck.cards.length).must_equal 52
    end

    it "should create an array of cards" do
      expect(@deck.cards[0]).must_be_instance_of Card
    end
  end

  describe "shuffle" do
    it "should change deck" do
      current_deck = @deck

      expect(@deck.shuffle).wont_equal current_deck
    end
  end

  describe "draw" do
    it "should return a card from the deck" do
      expect(@deck.draw).must_be_instance_of Card
    end

    it "should remove a card from the deck" do
      current_length = @deck.cards.length
      @deck.draw

      expect(@deck.cards.length).must_equal (current_length - 1)
    end

  end

  describe "count" do
    it "should return the correct number of cards" do
      expect(@deck.count).must_equal 52
    end
  end
end