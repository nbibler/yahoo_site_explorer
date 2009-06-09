class YahooSiteExplorer
  
  class Backlinks #:nodoc:
    
    Result = Struct.new(:title, :url, :click_url)
    
    attr_reader :query, 
                :total_results_available,
                :total_results_returned,
                :first_result_position,
                :results
    
    def initialize(query, backlinks_hash)
      @query                    = query
      @total_results_available  = numeric(backlinks_hash[:total_results_available])
      @total_results_returned   = numeric(backlinks_hash[:total_results_returned])
      @first_result_position    = numeric(backlinks_hash[:first_result_position])
      @results                  = collect_results(backlinks_hash[:results])
    end
    
    
    private
    
    
    def collect_results(results)
      collection = []
      return unless results.respond_to?(:each)
      results.each do |result|
        collection << Result.new(result[:title], result[:url], result[:click_url])
      end
      collection
    end
    
    def numeric(value, nil_value = nil)
      value ? value.to_i : nil_value
    end
    
  end
  
end
