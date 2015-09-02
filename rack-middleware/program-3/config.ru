## Brief history
# CGI was first widely used method of running Ruby scripts on server-side.
# You could run it like shell, perl or python scripts inside Apache using special module.
# Apache and FastCGI was preffered method of deploying Rails applications,
# until it was replaced by solutions using HTTP proxy and a “cluster” of dedicated
# Ruby servers (e.g. Mongrel). When Phusion Passenger (mod_rails) arrived and started
# supporting Rack – we had clear winner: Rack dominated Ruby web development world.

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Middleware
# Rack is more than interface that can be used to talk to web server.
# It’s used to group and order modules, which are usually Ruby classes,
# and specify dependency between them. Rack::Builder puts these modules on top of each other,
# creating stack-like structure of final web application.


# Rack comes with little funny web application called “Lobster”, that can be used as a demo.
# Rack use configuration file with extension .ru, that instructs Rack::Builder what middleware
# should it use and in which order. Let’s create one:

require 'rack/lobster'
run Rack::Lobster.new

#  http://localhost:9292