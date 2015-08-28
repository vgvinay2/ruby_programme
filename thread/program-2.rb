##  Concurrency vs Parallelism

# Concurrency  =>> Concurrency is the ability of a program to make progress on a task
# that is spread out over different slices of time.
# It allows us to run multiple “threads” at the same time.
# As one thread may be sleeping or waiting on I/O, another thread may
# take priority and start working, thus making optimal use of available CPU time.
# When you think of concurrency, think of “threads”.
#
# Parallelism =>> Parallelism is the ability to accomplish multiple tasks simultaneously.
# Concurrency may give the illusion of parallelism,
# but is not parallelism in and of itself,
# as your threads are still deferring to one another competing for the same CPU resources.
# For example: In MRI, you have something called a Global Interpreter Lock (GIL).
# Even though your code uses multiple threads, those threads are run one at a time, due to the GIL.

class Foo
  def method1
    puts 1
  end
end
foo = Foo.new
foo.method1

def foo.method2  ## First, a little definition: a singleton method is a method that is defined only for a single object.
  puts 2
end
foo.method1

foo.method2

foo_1 =  Foo.new
foo_1.method1
foo_1.method2