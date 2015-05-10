def test(*args, var_1)
  p *args
  p var_1
end

test(1,2,3,4,5,)


arr1 = [3,4,5]
arr2 = [9,8,7]
arr3 = arr1 + arr2
p arr3