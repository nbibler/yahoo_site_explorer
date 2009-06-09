class YahooSiteExplorer
  
  class ResultsContainer #:nodoc:
    include Enumerable
    
    attr_reader :total_results_available,
                :total_results_returned,
                :first_result_position,
                :results
    
    
    def initialize(service, request_options, results_hash = {}) #:nodoc:
      @service          = service
      @request_options  = request_options
      parse_hash(results_hash)
    end
    
    
    
    protected
    
    
    ##
    # Returns the starting position for a query that would subsequently 
    # follow the current result set.
    # 
    def next_starting_position
      @first_result_position + @total_results_returned
    end
    
    def parse_hash(backlinks_hash) #:nodoc:
      @total_results_available  = numeric(backlinks_hash[:total_results_available])
      @total_results_returned   = numeric(backlinks_hash[:total_results_returned])
      @first_result_position    = numeric(backlinks_hash[:first_result_position])
      @results                  = collect_results(backlinks_hash[:results])
    end
    
    def collect_results(results) #:nodoc:
      collection = []
      return unless results.respond_to?(:each)
      results.each do |result|
        collection << Result.new(result[:title], result[:url], result[:click_url])
      end
      collection
    end
    
    def numeric(value, nil_value = nil) #:nodoc:
      value ? value.to_i : nil_value
    end
    
  end
  
end
