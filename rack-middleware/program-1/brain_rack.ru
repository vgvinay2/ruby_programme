#!/usr/bin/env ruby
require 'rack'
load 'request_controller.rb'

Rack::Handler::WEBrick.run(RequestController.new,
                           :Port => 9000)

## Now going to localhost:9000 in a browser should give the output Hello World! We built our first simple rack app.
## Stay tuned for the next parts of the series and we'll flesh out our framework more.