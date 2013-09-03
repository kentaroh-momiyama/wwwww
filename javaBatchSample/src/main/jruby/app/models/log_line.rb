class LogLine #< ActiveRecord::Base
  
  attr_accessor :datetime, :ipaddr, :browser, :url
  
  def initialize(line)
      result = line.split(", ");
      @datetime = result[0];
      @ipaddr = result[1];
      @browser = result[2];
      @url = result[3];
  end
end
