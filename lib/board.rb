# frozen_string_literal: false

# Serves as the board of Connect four game
class Board
  attr_accessor :grid

  def initialize
    @grid = create_board
  end

  private

  def create_board
    Array.new(6) { Array.new(7) }
  end
end
