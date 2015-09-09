class User

  attr_accessor :name, :status

  def initialize(name, status)

    @name , @status = name, status

  end
end


user = User.new('Vinay', 'Interpreting!!!')
user.name
user.status

########################################################
########################################################

User = Struct.new(:name, :status) do

  def user_status
    "#{name}" +" Is "+"#{status}" + "The KOde"
  end

end

user = User.new

user.name = 'Vinay'
user.status = 'Interpreting!!!'

p user.name
p user[:name]
p user["name"]

p user.status
p user[:status]
p user['status']

p user.user_status
