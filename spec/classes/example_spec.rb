require 'spec_helper'

describe 'example', :type => :class do
#  include_context "hieradata"
  let(:hiera_data) { { :foo_message => "bar" } }

  describe 'when deploying on debian' do
    let :facts do {
      :operatingsystem => 'Debian',
    } end

    it { should contain_notify("foo").with_message("bar")}
  end
end
