p "=======111====#{self}"

  class Base

    p "=======222====#{self}"

    def has_many
      p "=======333====#{self}"
      p  "Hello Has Many"
    end

    p "=======222====#{self}"

  end

# has_many

base = Base.new
base.has_many

##############################################################
##############################################################

class S
  p 'Just started class S'
  p self
  module M
    p 'Nested module S::M'
    p self
  end
  p 'Back in the outer level of S'
  p self
end
