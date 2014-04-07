Gem::Specification.new do |s|
  s.name        = 'yongquan'
  s.version     = '0.1.0'
  s.date        = '2014-04-07'
  s.summary     = "yongquan is xuedao in foot"
  s.description = "download and maintenace daily k data!"
  s.authors     = ["Hu WeiXin"]
  s.email       = 'hunter.wxhu@gmail.com'
  s.bindir      = 'bin'
  s.executables << 'yongquan'
  #s.require_path =Dir['lib/*.rb'] + Dir['lib/Utility/*.rb']+Dir['lib/raw_data/*.rb']+Dir['test/*.rb']+Dir['lib/yahoo/*.rb']
  s.files      = Dir['lib/*.rb'] + Dir['lib/Utility/*']+Dir['lib/raw_data/*.rb']+Dir['test/*.rb']+Dir['lib/yahoo/*.rb']
  s.homepage     =    'http://rubygems.org/gems/yongquan'
  s.license       = 'MIT'
end