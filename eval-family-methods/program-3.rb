class EvalFamily

  def eval_test
    'Hii'
  end

end

EvalFamily.instance_eval do

  def self.using_eval_kass
    'using_eval_ckass'
  end

end

# p EvalFamily.new.using_eval_kass
p EvalFamily.using_eval_kass


