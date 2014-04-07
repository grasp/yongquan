def init_strategy(config_full_path,strategy_file_name)
	
	#创建策略文件文件夹
	#
	if  File.exists?(config_full_path) ==false
		Dir.mkdir(config_full_path)

	end

		# 复制一个模版文件过去
	    #
	target_strategy_file=File.expand_path(strategy_file_name,config_full_path)
    
	if File.exists?(target_strategy_file) ==false
	#  puts "#"
	 # puts "target_strategy_file=#{target_strategy_file}"
	  original_file=File.read(File.expand_path("../strategy.yml",__FILE__))
      new_file=File.new(target_strategy_file,"w+")
      new_file << original_file
      new_file.close
    end

   #作为一个全局变量
    $target_strategy_file =  target_strategy_file

end


