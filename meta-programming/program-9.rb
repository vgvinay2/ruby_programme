###### Send

class User

  def initialize(users)
    @users  = users
  end

  def contents
    @users
  end

  private

  def private_methods_1
    p 'This is private methods'
  end

end

users = ['Foo', 'Bar', 'Baz']
user = User.new(users)
p user.contents

# user.private_methods_1

# send can run private and protected method
user.send("private_methods_1")
user.send(:private_methods_1)

