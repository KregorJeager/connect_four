# frozen_string_literal: false

# Serves as the board of Connect four game
class Board
  attr_accessor :grid

  def initialize
    @grid = create_board
    @last_move = []
  end

  def place_move(x_coordinate, y_coordinate, player)
    # Do not confuse the a and y being reversed. y is the height and is
    # controlled by the outer array
    @grid[y_coordinate][x_coordinate] = player
    @last_move = [y_coordinate, x_coordinate]
  end

  private

  def create_board
    Array.new(6) { Array.new(7) }
  end
end
