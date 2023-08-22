class Round
  attr_reader :deck, :turns, :number_correct, :number_correct_by_category, :percent_correct, :percent_correct_by_category

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_correct_by_category = 0
    @percent_correct = 0
    @percent_correct_by_category = 0
  end

  def current_card
    deck.top_of_deck
  end

  def take_turn(guess)
    turn = Turn.new(guess, deck.top_of_deck.answer)
    if turn.correct?
      @number_correct += 1
    end
    @deck.next_card
    @turns << turn
    turn
  end

  def number_correct_by_category(category)
    if card.category == category
      @number_correct_by_category += 1
    end
  end
end