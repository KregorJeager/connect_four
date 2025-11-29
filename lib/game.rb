# frozen_string_literal: false

require_relative 'board'
# Will run game
class Game
  def initialize
    current_player = 'O'
  end

  def run
    loop do
      board = Board.new
      another_game = play(board)
      return unless another_game
    end
  end

  def play(board)end
end
