# The net/http library comes standard with Ruby and is the most commonly used library to
# access web sites. Here’s a basic example:

require 'net/http'

Net::HTTP.start('www.rubyinside.com') do |http|
  req = Net::HTTP::Get.new('/test.txt')
  puts http.request(req).body
end

# Hello Beginning Ruby reader!

# This example loads the net/http library, connects to the web server www.rubyinside.com and
# performs an HTTP GET request for /test.txt. This file’s contents are then returned and
# displayed. The equivalent URL for this request is http://www.rubyinside.com/test.txt,
# and if you load that URL in your web browser, you’ll get the same response as Ruby.