# You’re not limited to a single splat either:

def hello(name, *args, options, &block)
  p name
  p args
  p options
  p block
end

hello('denny', :a, :b, upcase: true) { 'block this!' }
# name: ”denny”
# args: [:a, :b]
# options: {:upcase=>true}
# => #<Proc:0x007fc1a10afd60>
