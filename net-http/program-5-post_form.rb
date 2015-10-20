require "net/http"
require "uri"

uri = URI.parse('http://www.rubyinside.com/test.cgi')
# Shortcut
# In this example, you use Net::HTTP.post_form to perform a POST HTTP request to the
# specified URL with the data in the hash parameter to be used as the form data.
response = Net::HTTP.post_form(uri, {'name' => 'Vinay', 'age' => '24'})
p response.body

# Full control
Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Post.new(uri.path)
  request.set_form_data({ 'name' => 'David', 'age' => '24' })
  puts http.request(request).body
end

