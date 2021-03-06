# encoding: utf-8

require_relative '../lib/yell'

puts <<-EOS

# Additionally to writing only on specific levels, you may pass a range to 
# the :level option:

logger = Yell.new STDOUT, :level => (:debug..:warn)

[:debug, :info, :warn, :error, :fatal].each do |level| 
  logger.send( level, level )
end
#=> "2012-02-29T09:30:00+01:00 [DEBUG] 65784 : debug"
#=> "2012-02-29T09:30:00+01:00 [ INFO] 65784 : info"
#=> "2012-02-29T09:30:00+01:00 [ WARN] 65784 : warn"


EOS

puts "=== actuale example ==="
logger = Yell.new STDOUT, :level => (:debug..:warn)

[:debug, :info, :warn, :error, :fatal].each do |level| 
  logger.send( level, level )
end

