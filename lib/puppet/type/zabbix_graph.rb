
Puppet::Type.newtype(:zabbix_graph) do
  desc <<-EOT
    Manage a graph in Zabbix
  EOT

  ensurable do
    defaultvalues
    defaultto :present
  end
  
  newparam(:height) do
    desc 'Height of the graph in pixels.'
  end

  newparam(:name , :namevar => true) do
    desc 'Name of the graph.'
    defaultto 60
  end
  
  newparam(:width ) do
    desc 'Width of the graph in pixels.'
  end
  
  newparam(:graphtype) do
    desc <<-EOT
      Graph\'s layout type.
      
      Possible values:
      * 0 - (default) normal;
      * 1 - stacked;
      * 2 - pie;
      * 3 - exploded.
    EOT
    defaultto 0
  end
  
  newparam(:percent_left) do
    desc 'Left percentile.'
    defaultto 0
  end
  
  newparam(:percent_right) do
    desc 'Right percentile.'
    defaultto 0
  end

  newparam(:show_3d) do
    desc <<-EOT
      Whether to show pie and exploded graphs in 3D.
      
      Possible values:
      * 0 - (default) show in 2D;
      * 1 - show in 3D.     
    EOT
  end
  
  newparam(:show_legend) do
    desc <<-EOT
      Whether to show the legend on the graph.
      
      Possible values:
      * 0 - hide;
      * 1 - (default) show. 
    EOT
    defaultto 1
  end
  
  newparam(:show_work_period) do
    desc <<-EOT
      Whether to show the working time on the graph.
      
      Possible values:
      * 0 - hide;
      * 1 - (default) show
    EOT
    defaultto 1
  end
  
  newparam(:yaxismax) do
    desc 'The fixed maximum value for the Y axis.'
  end
  
  newparam(:yaxismin) do
    desc 'The fixed minimum value for the Y axis.'
  end
  
  newparam(:ymax_itemid) do
    desc 'ID of the item that is used as the maximum value for the Y axis.'
  end
  
  newparam(:ymax_type) do
    desc <<-EOT
      Maximum value calculation method for the Y axis.
      
      Possible values:
      * 0 - (default) calculated;
      * 1 - fixed;
      * 2 - item. 
    EOT
    defaultto 0
  end
  
  newparam(:ymin_itemid) do
    desc 'ID of the item that is used as the minimum value for the Y axis.'
  end
  
  newparam(:ymin_type) do
    desc <<-EOT
      Minimum value calculation method for the Y axis.
      
      Possible values:
      * 0 - (default) calculated;
      * 1 - fixed;
      * 2 - item.
    EOT
    defaultto 0 
  end
end