require 'net/http'

url = URI.parse('http://www.rubyinside.com/test.txt')
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body
end

# The port number is optional, but URI.parse is clever enough to return the default HTTP port number of 80.

# It’s possible to produce an even simpler example:

require 'net/http'

url = URI.parse('http://www.rubyinside.com/test.txt')
response = Net::HTTP.get_response(url)
puts response.body