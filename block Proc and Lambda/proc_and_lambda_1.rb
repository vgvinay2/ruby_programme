class Paper

  def initialize(&block)
    block.call if block_given?
  end

  def set_variable
    return Proc.new do |kind, val|
      [kind, val].join(':')
    end
  end

  def title(value)
    @title = set_variable.call('TITLE', value)
  end

  def heading(value)
    @heading = set_variable.call('HEADING', value)
  end

  def body(value)
    @body = set_variable.call('BODY', value)
  end

  def display
    p @title
    p @heading
    p @body
  end


end

paper  = Paper.new do |p|
  p.title "My AweSome Paper"
  p.heading "My AweSome Paper"
  p.body "My AweSome Paper"
end
paper.display
