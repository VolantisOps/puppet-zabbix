
describe "zabbix_graph" do
  let(:provider) { Puppet::Type.type(:zabbix_graph) }
  
  it "should get defined as provider" do
  
    resource = Puppet::Type.type(:zabbix_graph).new({
      :name => 'my rspec graph',
    })
    resource.provider.class.to_s.should == "Puppet::Type::Zabbix_graph::ProviderRuby"
  end

  it "should return false on inexistant graphs" do
    resource = Puppet::Type.type(:zabbix_graph).new({
      :name => 'not my rspec graph',
    })
    Puppet.settings[:config]= "#{File.dirname(__FILE__)}/../../../../tests/etc/puppet.conf"
    resource.provider().exists?().should be_false
  end
end