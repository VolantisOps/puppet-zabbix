require "puppet/provider/zabbix"

Puppet::Type.type(:zabbix_graph).provide :ruby, :parent => Puppet::Provider::Zabbix do
  desc "zabbix graph provider"
  
  def exists?
    zabbix.client.api_request(
      :method => "graph.exists",
      :params => {
        :name => resource[:name],
        :host => resource[:host]
      })
  end
  
  def create
    require 'pp'
    pp resource[:items]
    zabbix.graphs.create(
      :gitems => [resource[:items]],
      :show_triggers => resource[:show_triggers],
      :name => resource[:name],
      :width => resource[:width],
      :height => resource[:height]
    )
  end
  
  def destroy
    
  end
end