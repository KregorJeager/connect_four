# frozen_string_literal: false

require_relative '../lib/game'
describe Game do
  describe '#run' do
    context 'When game is ran' do
      subject(:game_run) { described_class.new }
      let(:board) { instance_double(Board) }
      it 'creates a new board' do
        allow(game_run).to receive(:play).and_return(true, false)

        expect(Board).to receive(:new).twice
        game_run.run
      end

      it 'ends game when #play returns false' do
        allow(game_run).to receive(:play).and_return(true, true, true, false, true)

        expect(game_run).to receive(:play).exactly(4).times
        game_run.run
      end
    end
  end
end
