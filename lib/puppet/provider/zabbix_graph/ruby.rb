$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../../lib/ruby/")
require "zabbix"

Puppet::Type.type(:zabbix_graph).provide(:ruby) do
  desc "zabbix graph provider"
  
  def exists?
    extend Zabbix
    zbx.graphs.get_id( 
      :name => resource[:name] 
    ).is_a? Integer
  end
  
  def create
    extend Zabbix
  end
  
  def destroy
    extend Zabbix
  end
end