require 'test_helper'

class PageDataTest < Test::Unit::TestCase
  
  context 'YahooSiteExplorer::API.page_data' do
    
    teardown do
      FakeWeb.clean_registry
    end
    
    should 'return the total number of query results' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/pageData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_page_data_successful_response_set_1)
      assert_equal '99', page_data(:query => 'http://www.yahoo.com')[:total_results_available]
    end
    
    should 'return the first result position' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/pageData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_page_data_successful_response_set_1)
      assert_equal '1', page_data(:query => 'http://www.yahoo.com')[:first_result_position]
    end
    
    should 'return the total number of results returned' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/pageData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_page_data_successful_response_set_1)
      assert_equal '50', page_data(:query => 'http://www.yahoo.com')[:total_results_returned] 
    end
    
    should 'return the results' do
      mock_response_for('http://search.yahooapis.com/SiteExplorerService/V1/pageData?appid=testid&query=http://www.yahoo.com',
                        :response => mock_page_data_successful_response_set_1)
      assert_equal  50,
                    page_data(:query => 'http://www.yahoo.com')[:results].size
      assert_equal( {
                      :title=>"Site Explorer - Yahoo! Site Explorer",
                      :click_url=>"http://siteexplorer.search.yahoo.com/",
                      :url=>"http://siteexplorer.search.yahoo.com/"
                    },
                    page_data(:query => 'http://www.yahoo.com')[:results].first)
    end
    
  end
  
  def page_data(options = {})
    YahooSiteExplorer::API.new.page_data({:appid => 'testid'}.merge(options))
  end
  
end
