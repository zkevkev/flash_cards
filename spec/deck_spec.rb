require './lib/deck'
require './lib/card'

RSpec.describe Deck do
  it 'exists' do  
    cards = []
    deck = Deck.new(cards)

    expect(deck).to be_instance_of(Deck)
  end

  it 'has 3 cards' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(cards.count).to eq(3)
    expect(deck.cards).to eq(cards)
  end

  it 'can call cards in a category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    #Need to make test which calls category and returns cards in that category
    expect(deck.cards_in_category(:Geography)).to eq([card_1])
  end
end