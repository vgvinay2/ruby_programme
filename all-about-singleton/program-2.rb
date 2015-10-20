# Singleton is a design pattern that restricts instantiation of a class to only one instance
# that is globally available. It is useful when you need that instance to be accessible in
# different parts of the application, usually for logging functionality, communication with
# external systems, database access, etc.

class Logger

  def initialize
    @log = File.open("log.txt", "a")
  end

  @@instance = Logger.new

  def self.instance
    return @@instance
  end

  def log(msg)
    @log.puts(msg)
  end

  # we made method new private so that we cannot create new instances of class Logger.
  # That is Singleton Pattern: only one instance, globally available.
  private_class_method :new

end

Logger.instance.log('message 1')


## In this code example, inside class Logger we create instance of the very same class Logger
# and we can access that instance with class method Logger.instance whenever we need to write
# something to the log file using the instance method log. In the initialize method we just
# opened a log file for appending, and at the end of Logger class, we made method new private
# so that we cannot create new instances of class Logger. That is Singleton Pattern: only one
# instance, globally available.

