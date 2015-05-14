class File
  def file_contents
    file_contents = []
    self.each { |a| file_contents << a }
    p file_contents
  end
end

class Health

  def sort_the_test
    file_name, *args = *ARGV
    p file_name
    p *args
    @file = File.open(file_name)
    @sorted_arr = @file.file_contents
    p @sorted_arr.sort {|a, b| a.size <=> b.size}
  end

end

health = Health.new
health.sort_the_test




























