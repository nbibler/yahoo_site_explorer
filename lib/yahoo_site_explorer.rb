require 'relax'
require 'yahoo_site_explorer/api'
require 'yahoo_site_explorer/backlinks'
require 'yahoo_site_explorer/page_data'

##
# Provides a Ruby interface ot the Yahoo! Site Explorer web service.
# 
class YahooSiteExplorer
  
  
  def initialize(appid)
    @appid = appid
  end
  
  
  ##
  # Queries Yahoo! Site Explorer for backlinks (inlink data) to the given
  # URL.
  # 
  # === Example
  # 
  #     yahoo_site_explorer.backlinks('http://www.yahoo.com', :results => 50)
  # 
  # === Options
  # 
  # The following options would be passed into the method as a symbolized key
  # and value pair.
  # 
  # results::
  #   The number of results to return.
  #   Default: 50.
  #   Maximum: 100.
  # 
  # start::
  #   The starting result position to return.  The finishing position cannot 
  #   exceed 1000.
  #   Default: 1.
  # 
  # entire_site::
  #   Specifies whether to provide results for the entire site, or just the 
  #   page referenced by the query.  If the query is not a domain URL (i.e. 
  #   it contains path information, such as 
  #   http://smallbusiness.yahoo.com/webhosthing/), this parameter has no 
  #   effect.
  #   Default: no value.
  #   Other possible values: '1'
  # 
  # omit_inlinks::
  #   If specified, inlinks will not be returned if they are from pages in the same domain/subdomain as the requested page.
  #   Default: 'none'
  #   Other possible values: 'domain', 'subdomain'
  # 
  def backlinks(url, options = {})
    options[:query] ||= url
    Backlinks.new(self, options, api.inlink_data(options))
  end
  
  ##
  # Queries Yahoo! Site Explorer for page data on the given URL.
  # 
  # === Example
  # 
  #     yahoo_site_explorer.page_data('http://www.yahoo.com', :results => 50)
  # 
  # === Options
  # 
  # The following options would be passed into the method as a symbolized key
  # and value pair.
  # 
  # results::
  #   The number of results to return.
  #   Default: 50.
  #   Maximum: 100.
  # 
  # start::
  #   The starting result position to return.  The finishing position cannot 
  #   exceed 1000.
  #   Default: 1.
  # 
  # domain_only::
  #   Specifies whether to provide results for all subdomains (such as 
  #   http://search.yahoo.com for http://www.yahoo.com) of the domain query, 
  #   or just the specifically requested domain.  If the query is not a domain 
  #   URL (i.e. it contains path information, such as 
  #   http://smallbusiness.yahoo.com/webhosting/), this parameter has not 
  #   affect.
  #   Default: no value
  #   Other possible values: '1'
  # 
  def page_data(url, options = {})
    options[:query] ||= url
    PageData.new(self, options, api.page_data(options))
  end
  
  
  private
  
  
  def api
    @api ||= API.new(:appid => @appid)
  end
  
end
