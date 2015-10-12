tmp = 1
p tmp ||= 'Vinay'

tmp = nil
p tmp ||= 'Vinay'

tmp = 1
p tmp || (tmp = 'Vinay')

tmp = nil
p (tmp = 'Vinay') || tmp

