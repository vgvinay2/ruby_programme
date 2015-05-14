# http://www.slideshare.net/nirusuma/introduction-to-ruby-eval

# Class.methods.grep(/eval/)
# => [:module_eval, :class_eval, :instance_eval]
# here module_eval nad class_eval are alias name
class EvalFamily

  def eval_test
     'Hii'
  end

end

EvalFamily.class_eval do

  def using_eval_kass
     'using_eval_ckass'
  end

end

p EvalFamily.new.eval_test
p EvalFamily.new.using_eval_kass