require 'test_helper'

class YahooSiteExplorerTest < Test::Unit::TestCase
  
  context 'YahooSiteExplorer' do
    
    context 'backlinks' do
      
      setup do
        mock_response_for('http://search.yahooapis.com:80/SiteExplorerService/V1/inlinkData?appid=testid&query=http://www.google.com',
                          :response => mock_inlink_data_successful_response)
      end
      
      teardown do
        FakeWeb.clean_registry
      end
      
      should 'return Backlinks' do
        assert_kind_of YahooSiteExplorer::Backlinks, site_explorer.backlinks('http://www.google.com')
      end
      
      should 'return total_results as an integer' do
        assert_equal 941822, site_explorer.backlinks('http://www.google.com').total_results
      end
      
    end
    
  end
  
  def site_explorer
    YahooSiteExplorer.new('testid')
  end
  
end
