require 'yahoo_site_explorer/result'

class YahooSiteExplorer
  
  class Backlinks
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
    
    
    ##
    # This method will step through all of the results supplied by Yahoo! for 
    # your given query.  This method acts like a cursor and will 
    # automatically re-query Yahoo! after for any subsequent set of +results+ 
    # results (i.e. if your original query asked for 50 results at a time,
    # this method will act as a cursor, pulling 50 results at a time over the 
    # entire resulting collection).
    # 
    def each
      backlinks = self
      records   = self.results
      while !records.empty?
        records.each { |record| yield record }
        backlinks = backlinks.next_set
        records   = backlinks.results
      end
      self
    end
    
    ##
    # Returns the next Backlinks set based on available results from Yahoo!
    # specific to the current query and request options.
    # 
    def next_set #:nodoc:
      if next_starting_position <= @total_results_available
        @service.backlinks( @request_options.delete(:url), 
                            @request_options.merge({
                              :start => next_starting_position
                            })
                          )
      else
        Backlinks.new(@service, @request_options, {
          :total_results_available  => @total_results_available,
          :total_results_returned   => 0,
          :first_result_position    => next_starting_position,
          :results                  => []
        })
      end
    end
    
    
    private
    
    
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
