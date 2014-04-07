## gem purpose
1. download and maintenace daily k data
2. init strategy
3. provide API to higher layer

## why name yongquan?

yongquan is a xuewei under the foot.
it means it is a basic module to provide api to higher layer

## usage
* require 'yongquan'


## Test example
* rake test ; to run all case
* rake test  TEST="test/test_init.rb"

## reference
* Rake::testtask
* http://rake.rubyforge.org/classes/Rake/TestTask.html

## make own gem
http://guides.rubygems.org/make-your-own-gem/


## API service
* Global variable service
### $target_strategy_file 
*  provide target strategy file full path with name
### $all_stock_list
* provide a hash , key is yahoo id , and value is  stock name
### $working_day_hash
* provide a hash, key is 2014 date, value is true/false , means open or close of market
### provide a strategy class 
* Strategy.send(strategy).root_path

### provide email sent service
* email_notify(strategy,title,body)

### provide yahoo id to sina id
* convert_yahoo_symbol_to_sina(yahoo_symbol)

### provide api to initialize a single stock folder
* initialize_single_stock_folder(strategy,symbol)

### provide data gap calculation
 * get_last_date_of_raw_date(strategy,symbol)
 * get_last_date_of_raw_process_date(strategy,symbol)
 * get_last_date_of_signal(strategy,symbol)
 * get_last_date_of_win_lost(strategy,symbol)
 * check_working_day?(date)
 * get_gap_date_array(start_date,end_date)


### Yahoo download history APi 
 * download_yahoo_history(strategy,symbol)
 * batch_download_yahoo_history(strategy)

###  append raw data with real data
 * append_raw_data(strategy,symbol)
 * batch_append_raw_data(strategy,symbol_array)






