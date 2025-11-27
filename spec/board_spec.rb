# frozen_string_literal: false

require_relative '../lib/board'

describe Board do
  describe '#initialize' do
    subject(:board_init) { described_class.new }
    context 'When Board is initialized' do
      it 'Creates a 7 x 6 board' do
        expect(board_init.grid).to eq([[nil, nil, nil, nil, nil, nil, nil],
                                       [nil, nil, nil, nil, nil, nil, nil],
                                       [nil, nil, nil, nil, nil, nil, nil],
                                       [nil, nil, nil, nil, nil, nil, nil],
                                       [nil, nil, nil, nil, nil, nil, nil],
                                       [nil, nil, nil, nil, nil, nil, nil]])
      end
    end
  end

  describe '#place_move' do
    subject(:board_move) { described_class.new }
    context 'When a move is placed given a x,y coordinate by player_O' do
      it 'Place move in 3,3' do
        player_o = 'O'
        x_coordinate = 3
        y_coordinate = 3
        board_move.place_move(x_coordinate, y_coordinate, player_o)
        grid = board_move.grid

        expect(grid).to eq([[nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, 'O', nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil]])
      end
    end
  end
end
