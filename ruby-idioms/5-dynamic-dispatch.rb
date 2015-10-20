# Ruby supports calling methods at runtime even if you don’t know what those methods are at design time.

# add methods that provide the ability
# to dynamically call unknown methods on objects
def invoke(object, method_name)
  object.send(method_name)
end

def invoke_with_args(object, method_name, *args)
  object.send(method_name, *args)
end

# usage
invoke("get my length", :length) # => 13
invoke("reverse me", :reverse) # => em esrever
invoke_with_args("remove all letter e's", :delete, "e") # => rmov all lttr 's