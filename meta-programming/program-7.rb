class User

  attr_accessor :name, :status

  def initialize(name, status)

    @name , @status = name, status

  end
end


user = User.new('Vinay', 'Interpreting!!!')
user.name
user.status





