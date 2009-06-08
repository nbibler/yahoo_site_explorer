class YahooSiteExplorer
  
  class Backlinks #:nodoc:
    
    attr_reader :total_results
    
    def initialize(backlinks_hash)
      self.total_results = backlinks_hash[:total_results]
    end
    
    def total_results=(count)
      @total_results = count ? count.to_i : nil
    end
    
  end
  
end
