require 'test/unit'
require 'Utility/init.rb'
require 'raw_data/yahoo_history_download.rb'
require 'raw_data/append_raw_data.rb'

class YahooHistoryDownload < Test::Unit::TestCase

	def test_yahoo_download_histroy
    strategy="hundun_1"
    symbol="000002.sz"
    initialize_single_stock_folder(strategy,symbol)
	download_yahoo_history(strategy,symbol)
    end

    def test_append_raw_data
    	strategy="hundun_1"
        symbol="000002.sz"
        append_raw_data(strategy,symbol)

    end
end