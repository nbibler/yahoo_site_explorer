require 'test_helper'

class InlinkDataTest < Test::Unit::TestCase
  
  context 'YahooSiteExplorer::API.inlink_data' do
    
    teardown do
      FakeWeb.clean_registry
    end
    
    should 'return the total number of query results' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_inlink_data_successful_response)
      assert_equal '941822', inlink_data(:query => 'http://www.yahoo.com')[:total_results_available]
    end
    
    should 'return the first result position' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_inlink_data_successful_response)
      assert_equal '1', inlink_data(:query => 'http://www.yahoo.com')[:first_result_position]
    end
    
    should 'return the total number of results returned' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_inlink_data_successful_response)
      assert_equal '2', inlink_data(:query => 'http://www.yahoo.com')[:total_results_returned] 
    end
    
    should 'return the results' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_inlink_data_successful_response)
      assert_equal  [ {
                        :url        => 'http://www.commondreams.org/',
                        :title      => 'Common Dreams News Center',
                        :click_url  => 'http://www.commondreams.org/'
                      },
                      {
                        :url        => 'http://www.scrubtheweb.com/',
                        :title      => 'Scrub The Web',
                        :click_url  => 'http://www.scrubtheweb.com/'
                      }],
                    inlink_data(:query => 'http://www.yahoo.com')[:results]
    end
    
  end
  
  def inlink_data(options = {})
    YahooSiteExplorer::API.new.inlink_data({:appid => 'testid'}.merge(options))
  end
  
end
