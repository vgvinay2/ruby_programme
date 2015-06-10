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
