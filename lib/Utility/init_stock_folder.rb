
	def initialize_single_stock_folder(strategy,symbol)

      $strategy_config=Strategy.send(strategy)
	   #mk root path
	    $root_path=$strategy_config.root_path
      Dir.mkdir($root_path)  unless File.exists?($root_path)

      #mk symbol folder
      symbol_path=File.expand_path(symbol,$root_path)
      Dir.mkdir(symbol_path) unless File.exists?(symbol_path)

      #raw_data
      raw_data_path=File.expand_path($strategy_config.raw_data,symbol_path)
      Dir.mkdir(raw_data_path) unless File.exists?(raw_data_path)

      #history_data
      history_data_path=File.expand_path($strategy_config.history_data,raw_data_path)
      Dir.mkdir(history_data_path) unless File.exists?(history_data_path)

      #daily_data
      daily_data_path=File.expand_path($strategy_config.daily_data,raw_data_path)
      Dir.mkdir(daily_data_path) unless File.exists?(daily_data_path)

end
