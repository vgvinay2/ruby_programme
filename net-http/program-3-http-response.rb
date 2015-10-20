require 'net/http'

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  case response
    when Net::HTTPSuccess
      return response.body # rerurn will return otherwise, will execute till last case
    when Net::HTTPRedirection
      return get_web_document(response['Location'])
    else
      return nil
  end
end

p get_web_document('http://www.rubyinside.com/test.txt')
p get_web_document('http://www.rubyinside.com/non-existent')
p get_web_document('http://www.rubyinside.com/redirect-test')

# Hello Beginning Ruby reader!
# Nil
# Hello Beginning Ruby reader!
