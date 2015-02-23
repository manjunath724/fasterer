require 'spec_helper'

describe Fasterer::Analyzer do

  let(:test_file_path) { RSpec.root.join('support', 'analyzer', '18_block_vs_symbol_to_proc.rb') }

  xit 'should block that could be called with symbol 2 times' do
    analyzer = Fasterer::Analyzer.new(test_file_path)
    analyzer.scan
    expect(analyzer.errors[:block_vs_symbol_to_proc].count).to eq(2)
  end
end