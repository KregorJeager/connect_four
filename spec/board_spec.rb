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

      it 'Place move in 2,5' do
        player_o = 'O'
        x_coordinate = 2
        y_coordinate = 5
        board_move.place_move(x_coordinate, y_coordinate, player_o)
        grid = board_move.grid

        expect(grid).to eq([[nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, nil, nil, nil, nil, nil],
                            [nil, nil, 'O', nil, nil, nil, nil]])
      end

      context 'When a move is placed it saves the last move' do
        it 'Update @last_move' do
          player_o = 'O'
          x_coordinate = 2
          y_coordinate = 5
          board_move.place_move(x_coordinate, y_coordinate, player_o)
          last_move = board_move.instance_variable_get(:@last_move)
          # the x,y is written as y,x so it is easier to use it on array[y][x]
          expect(last_move).to eq([y_coordinate, x_coordinate])
        end
      end
    end
  end

  describe '#player_won?' do
    context 'When four pieces are aligned' do
      xit 'Returns true when horizontally alligned' do
        let(:grid) do
          double([[nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, 'O', nil, nil, nil, nil]])
        end
      end
    end
  end
end
