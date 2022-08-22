require "./gamer"

# A dice game in which money increases and decreases:
# * A gamer shakes a dice and the number determine the next state.
# * If the number of dice is even, gamer's money doubles, and if it is odd, gamer's money is halved.
# * If the gamer's money is less than half of the highest amount, it returns to the highest amount.
# * The game is repeated.

gamer = Gamer.new(100)         # The initial money is 100
memento = gamer.create_memento # Save the initial state

10.times do |i|
  puts "---- Turn #{i + 1}" # Display count

  gamer.play # Play a game

  # Determine the behavior of the Memento
  if gamer.money > memento.money
    puts "(Gamer's money is the highest ever, so record the current state.)"
    memento = gamer.create_memento
  elsif gamer.money < memento.money / 2
    puts "(Gamer's money is less than half of the highest amount, so return to the recorded state.)"
    gamer.set_memento(memento)
    puts "Gamer's money returns to #{gamer.money.to_s}."
  end

  puts ""

  sleep(1)
end
