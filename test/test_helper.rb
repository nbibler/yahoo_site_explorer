require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'fakeweb'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

Dir[File.dirname(__FILE__) + '/mocks/**/*.rb'].each { |mock| require mock }

require 'yahoo_site_explorer'

# Disable all unregistered (mocked) network traffic when testing.
FakeWeb.allow_net_connect = false

class Test::Unit::TestCase
  
  def mock_response_for(url, response, method = :get)
    FakeWeb.register_uri(method, url, response)
  end
  
end
