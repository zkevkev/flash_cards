# require'pry'
class Round
  attr_reader :deck, :turns, :number_correct, :percent_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @percent_correct = 0.0
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, deck.cards.first)
    if turn.correct?
      @number_correct += 1
    end
    @deck.cards.shift
    @turns << turn
    @percent_correct = (@number_correct / @turns.count) * 100.to_f
    turn
  end

  def number_correct_by_category(cat)
    correct_by_category = 0

    @turns.each do |turn|
      # binding.pry
      if turn.correct? && turn.card.category == cat
        correct_by_category += 1
      end
    end
    correct_by_category
  end

  def percent_correct_by_category(cat)
    correct_by_category_percent = 0
    round_by_category = 0

    @turns.each do |turn|
      if turn.card.category == cat
        round_by_category += 1
        correct_by_category_percent += 1 if turn.correct?
      end
    end
    (correct_by_category_percent / round_by_category) * 100.to_f
  end
end