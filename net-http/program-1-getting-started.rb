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

e = http.request(Net::HTTP::Get.new("/foo/bar"))

##############################################
##############################################
require "net/http"
require "uri"

uri = URI.parse("http://google.com/")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))

##############################################
##############################################
## Get resource with With URI

require "uri"

uri = URI.parse("http://mysite.com/some_api")
uri = URI.parse("https://mysite.com/thing?foo=bar")

# URI will also guess the correct port
URI.parse("http://foo.com").port # => 80
URI.parse("https://foo.com/").port # => 443

# Full reference
uri = URI.parse("http://foo.com/this/is/everything?query=params")
# p (uri.methods - Object.methods).sort
p uri.scheme        # => "http"
p uri.host          # => "foo.com"
p uri.port          # => 80
p uri.request_uri   # => "/this/is/everything?query=params"
p uri.path          # => "/this/is/everything"
p uri.query         # => "query=params"

# There are setters as well
uri.port = 8080
uri.host = "google.com"
uri.scheme = "ftp"
p uri.to_s
# => "ftp://google.com:8080/this/is/everything?query=param"


##############################################
##############################################
## Get resource with Without URI
