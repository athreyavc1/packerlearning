
require 'json'

puts "Please enter the value you want to Search\n"
searchpattern=gets.chomp

def perf_parse(h)
	h.each do | k, v|
		puts "#{v}"
	end
end

file=File.read('testfile.json')
dh=JSON.parse(file)

dh.keys.each do | key | 
	if key == searchpattern
	  if dh[key].is_a?(Hash)
		puts "This #{key} is a Hash I am displaying just the values "
		perf_parse(dh[key])
	else 
		perf_parse(dh[key])
	end
   end
end
