# open-uri is a library that wraps up the functionality of net/http, net/https, and net/ftp into
# a single package. Although it lacks some of the raw power of using the constituent libraries
# directly, open-uri makes it a lot easier to perform all the main functions.

f = open('http://www.rubyinside.com/test.txt')
puts f.readlines.join

# Hello Beginning Ruby reader!

###############################################
###############################################
require 'open-uri'

f = open('http://www.rubyinside.com/test.txt')
puts "The document is #{f.size} bytes in length"
f.each_line do |line|
  puts line
end

###############################################
###############################################
require 'open-uri'

open('http://www.rubyinside.com/test.txt') do |f|
  puts f.readlines.join
end

# HTTPS and FTP URLs are treated transparently. You can use any HTTP, HTTPS, or FTP URL with open.

###############################################
###############################################
require 'open-uri'

url = URI.parse('http://www.rubyinside.com/test.txt')
url.open { |f| puts f.read }

# Or

require 'open-uri'
puts URI.parse('http://www.rubyinside.com/test.txt').open.read

###############################################
###############################################
require 'open-uri'

f = open('http://www.rubyinside.com/test.txt')
puts f.content_type
puts f.charset
puts f.last_modified

# text/plain
# iso-8859-1
# Sun Oct 15 02:24:13 +0100 2006

###############################################
###############################################
# it’s possible to send extra header fields with an HTTP request by supplying an
# optional hash parameter to open:

require 'open-uri'

f = open('http://www.rubyinside.com/test.txt',
         {'User-Agent' => 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)'})
puts f.read
# In this example, a “user agent” header is sent with the HTTP request that makes it appear
# as if you’re using Internet Explorer to request the remote file. Sending a user agent header can
# be a useful technique if you’re dealing with a web site that returns different information to dif-
# ferent types of browsers. Ideally, however, you should use a user agent header that reflects the
# name of your program.

