# method_missing  => BasicObject class

class Dummy

  def method_missing(m, *args, &block)
    puts "There's no method called #{m} here -- please try again."
  end

end
Dummy.new.anything



class Ambient

  def self.init
    Thread.current[:sr_hash] = {}
  end

  def self.method_missing(name, *args)
    name_as_string= name.to_s
    if name_as_string.ends_with?("=")
      value= args.first
      set(name_as_string.chomp("=").to_sym, value)
    else
      get(name)
    end
  end

  def self.set(key, value)
    Thread.current[:sr_hash][key] = value
  end

  def self.get(key)
    Thread.current[:sr_hash][key]  if Thread.current[:sr_hash]
  end

end





