require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round1 = Round.new(deck)

def start(round)
  puts "Welcome! You're playing with 4 cards."
  puts "-------------------------------------------------"
  puts "This is card number 1 out of 4."
  puts "Question: What is 5 + 5?"
  gets == 10
  puts "Correct!"
  puts "This is card number 2 out of 4."
  puts "Question: What is Rachel's favorite animal?"
  gets == "panda"
  puts "Incorrect."
  puts "This is card number 3 out of 4."
  puts "Question: What is Mike's middle name?"
  gets == "nobody knows"
  puts "Correct!"
  puts "This is card number 4 out of 4."
  puts "Question: What cardboard cutout lives at Turing?"
  gets == "Justin Bieber"
  puts "Correct!"
  puts "****** Game over! ******"
  puts "You had 3 correct guesses out of 4 for a total score of 75%."
  puts "STEM - 100% correct"
  puts "Turing Staff - 50% correct"
  puts "Pop Culture - 100% correct"
end

start(round1)

