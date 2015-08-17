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
# See? You can splat before a required argument just fine. Splatting before any optional arguments though?

# Works fine:
def hello(name = nil, *args)

# Throws SyntaxError:
def hello(*args, name = nil)

# Using several splats in a definition SyntaxErrors too:
def hello(a, *args, b, *brgs)
Ruby wouldn’t know where to cut off the splats, so the SyntaxError’s are well deserved.

