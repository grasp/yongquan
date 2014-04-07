def get_working_date_hash
  working_date_file=File.expand_path("../../utility/2014.txt",__FILE__)
  $working_day_hash=Hash.new

  File.read(working_date_file).split("\n").each do |line|
    result=line.split("#")
    $working_day_hash[result[1]]=result[0]
    end
    return $working_day_hash
end
