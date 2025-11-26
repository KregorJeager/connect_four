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
end
