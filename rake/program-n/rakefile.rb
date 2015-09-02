directory "tmp"

file "hello.tmp" => "tmp" do
  sh "echo 'Hello' >> 'tmp/hello.tmp'"
end

## run by given command
## rake-program-2.rb hello.tmp
