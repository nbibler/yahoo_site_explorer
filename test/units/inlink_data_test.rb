require 'test_helper'

class InlinkDataTest < Test::Unit::TestCase
  
  context 'YahooSiteExplorer::API.inlink_data' do
    
    teardown do
      FakeWeb.clean_registry
    end
    
    should 'return the total number of query results' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.google.com',
                        :response => mock_inlink_data_successful_response)
      assert_equal '941822', inlink_data(:query => 'http://www.google.com')[:total_results] 
    end
    
  end
  
  def inlink_data(options = {})
    YahooSiteExplorer::API.new.inlink_data({:appid => 'testid'}.merge(options))
  end
  
end
