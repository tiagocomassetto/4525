require 'spec_helper'
describe 'init' do
  context 'with default values for all parameters' do
    it { should contain_class('init') }
  end
end
