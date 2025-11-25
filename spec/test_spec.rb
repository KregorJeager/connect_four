# frozen_string_literal: false

require_relative '../lib/test'

describe Test do
  subject(:test) { described_class.new }
  context 'When rspec gem is used' do
    it 'test successful' do
      result = test.dummy
      expect(result).to eq('test')
    end
  end
end
