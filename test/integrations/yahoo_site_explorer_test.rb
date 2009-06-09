require 'test_helper'

class YahooSiteExplorerTest < Test::Unit::TestCase
  
  context 'YahooSiteExplorer' do
    
    context 'backlinks' do
      
      setup do
        mock_response_for('http://search.yahooapis.com:80/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.yahoo.com',
                          :response => mock_inlink_data_successful_response)
      end
      
      teardown do
        FakeWeb.clean_registry
      end
      
      should 'return Backlinks' do
        assert_kind_of YahooSiteExplorer::Backlinks, site_explorer.backlinks('http://www.yahoo.com')
      end
      
      should 'be Enumerable' do
        assert_kind_of Enumerable, site_explorer.backlinks('http://www.yahoo.com')
      end
      
      should 'return total_results_available as a numeric' do
        assert_equal 941822, site_explorer.backlinks('http://www.yahoo.com').total_results_available
      end
      
      should 'return first_result_position as a numeric' do
        assert_equal 1, site_explorer.backlinks('http://www.yahoo.com').first_result_position
      end
      
      should 'return total_results_returned as a numeric' do
        assert_equal 2, site_explorer.backlinks('http://www.yahoo.com').total_results_returned
      end
      
      should 'return a collection of results' do
        assert_equal 2, site_explorer.backlinks('http://www.yahoo.com').results.size
      end
      
      should 'contain the result title' do
        assert_equal 'Common Dreams News Center', site_explorer.backlinks('http://www.yahoo.com').results.first.title
      end
      
      should 'contain the result url' do
        assert_equal 'http://www.commondreams.org/', site_explorer.backlinks('http://www.yahoo.com').results.first.url
      end
      
      should 'contain the result click_url' do
        assert_equal 'http://www.commondreams.org/', site_explorer.backlinks('http://www.yahoo.com').results.first.click_url
      end
      
      context 'each' do
        
        setup do
          mock_response_for('http://search.yahooapis.com:80/SiteExplorerService/V1/inlinkData?query=http://www.yahoo.com&appid=testid',
                            :response => mock_inlink_data_successful_response_set_1)
          mock_response_for('http://search.yahooapis.com:80/SiteExplorerService/V1/inlinkData?start=51&query=http://www.yahoo.com&appid=testid',
                            :response => mock_inlink_data_successful_response_set_2)
        end
        
        should 'traverse multiple, contiguous query sets' do
          results = 0
          backlinks = site_explorer.backlinks('http://www.yahoo.com')
          backlinks.each { |b| results += 1 }
          assert_equal 99, results
        end
        
        should 'yield a Result' do
          assert site_explorer.backlinks('http://www.yahoo.com').all? { |result| result.kind_of?(YahooSiteExplorer::Result) }
        end
        
      end
      
    end
    
  end
  
  def site_explorer
    YahooSiteExplorer.new('testid')
  end
  
end
