require 'test/unit'
#require 'Utility/init_strategy.rb'
require 'Utility/init.rb'

class YongquanInitTest2 < Test::Unit::TestCase

  def setup
  	expected_config_folder="d:\\test_strategy"
    strategy_file_name="test_strategy.yml"
    target_strategy_file = File.expand_path(strategy_file_name,expected_config_folder)
    File.delete(target_strategy_file) if File.exists?(target_strategy_file)
    #Dir.delete(expected_config_folder) if Dir.exists?(expected_config_folder);permission issue

  end

  def test_init_strategy

     expected_config_folder="d:\\test_strategy"
     strategy_file_name="test_strategy.yml"

     init_strategy(expected_config_folder,strategy_file_name)
     assert(File.exists?(expected_config_folder))
     target_strategy_file = File.expand_path(strategy_file_name,expected_config_folder)

     assert(File.exists?(target_strategy_file))
     assert(File.stat(target_strategy_file).size > 0 )
     assert(File.exists?($target_strategy_file))

 end

 def test_stock_list_init
 	  assert($all_stock_list.nil? ==  false)
 	  assert($all_stock_list.keys.size > 2400)
 end

 def test_strategy_is_there
 	 assert(Strategy.send("hundun_1").nil? == false )
end

end