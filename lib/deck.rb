class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def cards_in_category(category)
    question_and_answer = cards.select do |card|
      card.categorization == category
    end

    question_and_answer
  end
end