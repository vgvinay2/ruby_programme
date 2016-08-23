require 'sshkit'
require 'sshkit/dsl'

run_locally do
  puts capture(:whoami)
end