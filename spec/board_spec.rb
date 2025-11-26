# frozen_string_literal: false

describe 'Board' do
  describe '#initialize' do
    context 'When Board is initialized' do
      subject(:board_init) { describe_class.new }
      it 'Creates a 7 x 6 board' do
        expect(board.grid).to eq([[nil, nil, nil, nil, nil, nil, nil],
                                  [nil, nil, nil, nil, nil, nil, nil],
                                  [nil, nil, nil, nil, nil, nil, nil],
                                  [nil, nil, nil, nil, nil, nil, nil],
                                  [nil, nil, nil, nil, nil, nil, nil],
                                  [nil, nil, nil, nil, nil, nil, nil]])
      end
    end
  end
end
