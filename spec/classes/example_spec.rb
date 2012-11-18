require 'spec_helper'

describe 'example', :type => :class do
  it { should include_class('example') }

  describe 'when deploying on debian' do
    let :facts do {
      :operatingsystem => 'Debian',
    } end

    it { should contain_notify("foo").with_message("foo_message")}
  end
end
