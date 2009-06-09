class YahooSiteExplorer
  
  ##
  # Wraps each result returned by Yahoo! backlinks (inlink data) and page data
  # requests.
  # 
  class Result
    attr_accessor :title, :url, :click_url
    
    def initialize(title, url, click_url) #:nodoc:
      @title, @url, @click_url = title, url, click_url
    end
    
  end
  
end
