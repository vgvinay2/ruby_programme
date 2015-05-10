def context

  p = proc do
    p 'in the proc'
    return 'Proc return value'
  end

  l = lambda do
    p 'in the lambda'
    return 'Lambda return value'
  end

  #p.call
  #l.call

  l.call
  p.call
  p 'i am last '
end

context
