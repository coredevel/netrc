require 'spec_helper'
describe 'netrc' do

  context 'with defaults for all parameters' do
    it { should contain_class('netrc') }
  end
end
