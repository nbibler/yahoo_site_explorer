class YahooSiteExplorer
  
  class API < Relax::Service #:nodoc:
    
    defaults do
      parameter :appid, :required => true
      parameter :query, :required => true
    end
    
    endpoint 'http://search.yahooapis.com/SiteExplorerService/V1/' do
      
      action :inlink_data, :url => 'inlinkData' do
        parameter :results
        parameter :start
        parameter :entire_site
        parameter :omit_inlinks
        parameter :output
        parameter :callback
        
        parser 'ResultSet' do
          element :total_results, :attribute => 'totalResultsAvailable', :xpath => './/@totalResultsAvailable'
        end
      end
      
    end
    
  end
  
end
