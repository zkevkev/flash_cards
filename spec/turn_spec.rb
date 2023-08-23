require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn).to be_instance_of(Turn)
  end

  it 'returns the guess' do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn.guess).to eq('Juneau')
  end

  it 'returns the correct answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn.card).to eq(card)
  end
  
  it 'determines if the answer is correct' do
    turn = Turn.new("Juneau", "Juneau")

    expect(turn.correct?).to be true
  end

  it 'gives feedback' do
    turn = Turn.new("Juneau", "Juneau")

    expect(turn.feedback).to eq('Correct!')
  end
end