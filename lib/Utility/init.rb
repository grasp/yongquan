require  File.expand_path("../init_strategy.rb",__FILE__)
require  File.expand_path("../stock_list_init.rb",__FILE__)
require  File.expand_path("../working_day.rb",__FILE__)
require  File.expand_path("../init_stock_folder.rb",__FILE__)
require 'action_mailer'
require 'settingslogic'

expected_config_folder="d:\\strategy"
strategy_file_name="strategy.yml"

#初始化策略文件
init_strategy(expected_config_folder,strategy_file_name)  if $target_strategy_file.nil?
get_working_date_hash if $working_day_hash.nil?
#初始化股票列表
load_stock_list_file if $all_stock_list.nil?

 class Strategy < Settingslogic
     # source File.expand_path('../strategy.yml',__FILE__)
     source $target_strategy_file
end

class Notifier < ActionMailer::Base
  def email(mailto,subject,ebody)
    mail(:to=>mailto,:from=>"hunter.hu@nsn.com",:subject=> subject,:body=>ebody)
  end
end

#reference 6.2 of http://guides.rubyonrails.org/action_mailer_basics.html
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'w090.com',
  user_name:            'mark.xiansheng',
  password:             'tianrenheyi123#',
  authentication:       'plain',
  enable_starttls_auto: true  }

ActionMailer::Base.delivery_method = :smtp

result=`ipconfig`
if result.match("10.69.70.34")
    ENV['http_proxy']="http://10.140.19.49:808"
    ENV['https_proxy']="https://10.140.19.49:808"
end

def email_notify(strategy,title,body)
  Notifier.email(Strategy.send(strategy).email_receiver,title,body).deliver!
end


def convert_yahoo_symbol_to_sina(yahoo_symbol)
   sina_id=yahoo_symbol.split(".").reverse.join  if yahoo_symbol.match("sz")
   sina_id=yahoo_symbol.gsub("ss","sh").split(".").reverse.join  if yahoo_symbol.match("ss")
   return sina_id
end


  result=`ipconfig`
  if result.match("10.69.70.34")
   ENV['http_proxy']="http://10.140.19.49:808"
   ENV['https_proxy']="https://10.140.19.49:808"
  end

