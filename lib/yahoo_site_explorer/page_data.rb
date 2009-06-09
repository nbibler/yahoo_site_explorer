require 'yahoo_site_explorer/results_container'
require 'yahoo_site_explorer/result'

class YahooSiteExplorer
  
  class PageData < ResultsContainer
    
    ##
    # This method will step through all of the results supplied by Yahoo! for 
    # your given query.  This method acts like a cursor and will 
    # automatically re-query Yahoo! after for any subsequent set of +results+ 
    # results (i.e. if your original query asked for 50 results at a time,
    # this method will act as a cursor, pulling 50 results at a time over the 
    # entire resulting collection).
    #
    def each
      page_data = self
      records   = self.results
      while !records.empty?
        records.each { |record| yield record }
        page_data = page_data.next_set
        records   = page_data.results
      end
      self
    end
    
    ##
    # Returns the next PageData set based on available results from Yahoo!
    # specific to the current query and request options.
    #
    def next_set #:nodoc:
      if next_starting_position <= @total_results_available
        @service.page_data( @request_options.delete(:url), 
                            @request_options.merge({
                              :start => next_starting_position
                            })
                          )
      else
        PageData.new(@service, @request_options, {
          :total_results_available  => @total_results_available,
          :total_results_returned   => 0,
          :first_result_position    => next_starting_position,
          :results                  => []
        })
      end
    end
    
  end
  
end
