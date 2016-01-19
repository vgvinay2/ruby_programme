The instance_exec method is available on every Object, 
and everything in Ruby is an Object, and when you use it 
you open up the singleton_class of the object to work on. 
Anything you can do in a Class you could do in an instance_exec.

num = Object.new
num.instance_exec {
  def == other
    other == 3
  end
}
num == 4
# => false
num == 3
# => true
