# http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/

######################################################
######################################################

def first_each_child(visitor)
  visitor.call('Jon')
  visitor.call('Shoo')
  visitor.call('Roy')
  visitor.call('Norad')
  visitor.call('York')
end

visitor = ->(v) { p "Hello!! #{v}" }                  ## This is proc object.
first_each_child(visitor)

######################################################
######################################################

def second_each_child
  yield('Jon')
  yield('Shoo')
  yield('Roy')
  yield('Norad')
  yield('York')
end

second_each_child do |v|
  p "Hello!! #{v}"
end

##  Now if we want we can reference a block the argument as a proc object,
##  by adding  a parameter name with ampersand

######################################################
######################################################
def third_each_child(&visitor)
  visitor.call('Jon')
  visitor.call('Shoo')
  visitor.call('Roy')
  visitor.call('Norad')
  visitor.call('York')
end

third_each_child do |v|
  p "Hello!! #{v}"
end