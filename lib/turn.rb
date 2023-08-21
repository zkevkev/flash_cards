class Turn
  attr_reader :string, :card

  def initialize(string, card)
    @string = string
    @card = card
  end

  def guess
    @string
  end

  def card
    @card
  end

  def correct?
    @string == @card
  end

  def feedback
    if @string == @card
      'Correct!'
    else
      'Incorrect.'
    end
  end
end