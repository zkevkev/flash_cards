class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def cards_in_category(category)
    question_and_answer = @cards.select do |card|
      card.category == category
    end
  end

  def count
    @cards.count
  end

  def top_of_deck
    @cards[0]
  end

  def next_card
    @cards.shift
  end
end

