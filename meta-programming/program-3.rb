module ActiveRecord

  class Base

    def self.has_many(*args)
      p args
      p 'Hello Has Many'
    end
  end

end


class User < ActiveRecord::Base

  has_many :roles

end