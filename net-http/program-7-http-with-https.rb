# HTTP is a plain text, unencrypted protocol, and this makes it unsuitable for transferring sensitive
# data such as credit card information. HTTPS is the solution, as it’s the same as HTTP but
# routed over Secure Socket Layer (SSL), which makes it unreadable to any third parties.
# Ruby’s net/https library makes it possible to access HTTPS URLs, and you can mak

require 'net/http'
require 'net/https'
url = URI.parse('https://example.com/')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true if url.scheme == 'https'
request = Net::HTTP::Get.new(url.path)
puts http.request(request).body

# Note that you use the scheme method of url to detect if the remote URL is in fact one that
# requires SSL to be activated.

# It’s trivial to mix in the form-posting code to get a secure way of sending sensitive
# information to the remote server:
                                                                                                                   require 'net/http'
require 'net/https'
url = URI.parse('https://example.com/')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true if url.scheme == 'https'
request = Net::HTTP::Post.new(url.path)
request.set_form_data({ 'credit_card_number' => '1234123412341234' })
puts http.request(request).body