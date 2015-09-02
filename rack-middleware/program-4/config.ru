require 'rack'
require 'rack/lobster'
require '../../rack-middleware/program-4/lib/shrimp'

use Shrimp
run Rack::Lobster.new