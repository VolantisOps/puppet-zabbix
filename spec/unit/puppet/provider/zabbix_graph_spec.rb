
describe "zabbix_graph" do
  let(:provider) { Puppet::Type.type(:zabbix_graph) }
  
  it "should get defined as provider" do
  
    resource = Puppet::Type.type(:zabbix_graph).new({
      :name => 'my rspec graph',
    })
    resource.provider.class.to_s.should == "Puppet::Type::Zabbix_graph::ProviderRuby"
  end
  
end