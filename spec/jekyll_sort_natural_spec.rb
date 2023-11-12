require 'jekyll'
require_relative '../lib/jekyll_sort_natural'

RSpec.describe(Jekyll) do
  include described_class

  let(:config) { instance_double('Configuration') }
  let(:context) do
    context_ = instance_double(Liquid::Context)
    context_.config = config
    context_
  end

  it 'is created properly', skip: 'Not implemented' do
    run_tag = RunTag.new('run', 'echo asdf')
    output = run_tag.render(context)
    expect(output).to eq('asdf')
  end
end
