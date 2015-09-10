proc_obj_without_block_not_possible = Proc.new # Proc class
proc_obj_without_block_not_possible = proc.new # Kernel#proc

proc_obj_with_block = Proc.new { }
# proc_obj_with_block = proc.new { }

proc_obj_without_args = Proc.new do 'Hello'
end

proc_obj_by_proc_class = Proc.new do |str|
  "Hello #{str}"
end

p proc_obj_by_proc_class
p proc_obj_by_proc_class.call
p proc_obj_by_proc_class.call('Vinay')
p proc_obj_by_proc_class.('Vinay')
p proc_obj_by_proc_class['Vinay']
p proc_obj_by_proc_class.call('Vinay', 'Brijesh')

proc_obj_by_kernel_proc = proc do |str|
  "Hello #{str}"
end

p proc_obj_by_kernel_proc
p proc_obj_by_kernel_proc.call
p proc_obj_by_kernel_proc.call('Vinay')
p proc_obj_by_kernel_proc.('Vinay')
p proc_obj_by_kernel_proc['Vinay']
p proc_obj_by_kernel_proc.call('Vinay', 'Brijesh')

###################################Alteratively########################
#######################################################################

p '=====================Now About Lambda'
proc_obj_by_lambda_without_block = lambda { }
proc_obj_by_lambda_without_block = -> { }

proc_obj_by_lambda = lambda do |str|
  "Hello #{str}"
end

# p proc_obj_by_lambda
# p proc_obj_by_lambda.call
p proc_obj_by_lambda.call('Vinay')
p proc_obj_by_lambda.('Vinay')
p proc_obj_by_lambda['Vinay']
# p proc_obj_by_lambda.call('Vinay', 'Brijesh')


################### Difference between proc and lambda: 1 #########################
###################################################################################

def return_from_proc
  prok = proc { p 'i am in proc block'}
  prok.call()
  return 'i am proc return value'
end



def return_from_lambda
  lamda = proc { p 'i am in lambda block'}
  lamda.call()
  return 'i am lambda return value'
end

return_from_proc
return_from_lambda


################### Difference between proc and lambda: 2 #########################
###################################################################################

prok = proc { |a,b| "HEllo#{a}===and==#{b}"}
prok.call
prok.call('Ajay')
prok.call('Ajay', 'Vijay')
prok.call('Ajay', 'Vijay', 'Sanjay')

stabby_lambda = ->(a,b)  { "HEllo#{a}===and==#{b}"}
stabby_lambda.call
stabby_lambda.call('Ajay')
stabby_lambda.call('Ajay', 'Vijay')
stabby_lambda.call('Ajay', 'Vijay', 'Sanjay')

