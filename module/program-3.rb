module M

  def report
    p "'report' method in module M"
  end

end

class C

  include M

end

class D < C
end

obj = D.new
obj.report