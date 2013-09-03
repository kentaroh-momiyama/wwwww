class LogFilteredLine #< ActiveRecord::Base
  
  attr_accessor :ipaddr, :url

  def initialize(log_line)
    @ipaddr = log_line.ipaddr;
    @url = log_line.url;
  end
  
end
