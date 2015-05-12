require 'debugger'
class Array
  def to_hash_values(&block)
    h = {}
    self.map { |b| h[block.call(b)]= b }
  end
end

p [1,2,3,4,5].to_hash_values { |a| a*2 }