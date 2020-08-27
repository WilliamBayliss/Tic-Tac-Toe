require_relative "../lib/tic_tac_toe.rb"

puts "Welcome to tic tac toe!"
will = TicTacToe::Player.new({color: "X", name: "Will"})
bill = TicTacToe::Player.new({color: "O", name: "Bill"})
players = [will, bill]
TicTacToe::Game.new(players).play