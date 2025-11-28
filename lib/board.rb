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

  def player_won?(player)
    horizontal_match(player) || vertical_match(player) || diagonal_match(player)
  end

  private

  def create_board
    Array.new(6) { Array.new(7) }
  end

  def horizontal_match(player)
    grid.any?([player, player, player, player, nil, nil, nil]) ||
      grid.any?([nil, player, player, player, player, nil, nil]) ||
      grid.any?([nil, nil, player, player, player, player, nil]) ||
      grid.any?([nil, nil, nil, player, player, player, player])
  end

  def vertical_match(player)
    streak = 0
    (0..6).each do |i|
      (0..5).each do |f|
        streak += 1 if grid[f][i] == player
        streak = 0 if grid[f][i] != player
        return true if streak == 4
      end
    end
    false
  end

  def diagonal_match(player)
    streak = 0
    slope = 1
    2.times do
      (0..6).each do |i|
        (0..5).each do |f|
          streak += 1 if @grid[f][i + f * slope] == player
          streak = 0 if @grid[f][i + f * slope] != player
          return true if streak == 4
        end
        streak = 0
      end
      slope = -1
    end
    false
  end
end
