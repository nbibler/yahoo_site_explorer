require 'relax'
require 'yahoo_site_explorer/api'
require 'yahoo_site_explorer/backlinks'

##
# 
# 
class YahooSiteExplorer
  
  
  def initialize(appid)
    @appid = appid
  end
  
  
  def backlinks(url, options = {})
    options[:query] ||= url
    Backlinks.new(options[:query], api.inlink_data(options))
  end
  
  
  private
  
  
  def api
    @api ||= API.new(:appid => @appid)
  end
  
end
