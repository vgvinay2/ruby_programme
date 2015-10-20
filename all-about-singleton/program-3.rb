## Ruby Singleton module
# Ruby Standard Library has a Singleton module which implements the Singleton pattern.
# Previous example when using the Singleton module would translate to:

require 'singleton'

class Logger
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
  end

  def log(msg)
    @log.puts(msg)
  end
end

Logger.instance.log('message 2')

## Here we require and include Singleton module inside Logger class,
# define initialize method which opens the log file for appending and
# instance method log for writing to that log file. Ruby Singleton module
# does lazy instantiation (creates instance from Logger class at the moment
# when we call Logger.instance method) and not during load time (like in the previous example).
# Also, Ruby Singleton module makes new method private,
# so we don't have to call private\_class\_method.
dsApi::CampaignManagement.new(options)