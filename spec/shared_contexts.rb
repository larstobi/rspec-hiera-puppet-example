require 'rspec-hiera-puppet'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

shared_context "hieradata" do
  let(:hiera_config) do
    { :backends => ['rspec', 'puppet', 'yaml'],
      :hierarchy => [
        '%{fqdn}/%{calling_module}',
        '%{calling_module}'],
      :puppet => { :datasource => 'data' }
      :yaml => { :datadir => File.join(fixture_path, 'hieradata') },
      :rspec => respond_to?(:hiera_data) ? hiera_data : {} }
  end
end
