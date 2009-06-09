class YahooSiteExplorer
  
  class API < Relax::Service #:nodoc:
    
    defaults do
      parameter :appid, :required => true
      parameter :query, :required => true
      parameter :results
      parameter :start
    end
    
    endpoint 'http://search.yahooapis.com/SiteExplorerService/V1/' do
      
      action :inlink_data, :url => 'inlinkData' do
        parameter :entire_site
        parameter :omit_inlinks
        
        parser 'ResultSet' do
          element :total_results_available, :attribute => 'totalResultsAvailable',  :xpath => './/@totalResultsAvailable'
          element :first_result_position,   :attribute => 'firstResultPosition',    :xpath => './/@firstResultPosition'
          element :total_results_returned,  :attribute => 'totalResultsReturned',   :xpath => './/@totalResultsReturned'
          elements 'Result',                :as => :results do
            element 'Title',                :as => :title
            element 'Url',                  :as => :url
            element 'ClickUrl',             :as => :click_url
          end
        end
      end
      
      action :page_data, :url => 'pageData' do
        parameter :domain_only
        
        parser 'ResultSet' do
          element :total_results_available, :attribute => 'totalResultsAvailable',  :xpath => './/@totalResultsAvailable'
          element :first_result_position,   :attribute => 'firstResultPosition',    :xpath => './/@firstResultPosition'
          element :total_results_returned,  :attribute => 'totalResultsReturned',   :xpath => './/@totalResultsReturned'
          elements 'Result',                :as => :results do
            element 'Title',                :as => :title
            element 'Url',                  :as => :url
            element 'ClickUrl',             :as => :click_url
          end
        end
      end
      
    end
    
  end
  
end
