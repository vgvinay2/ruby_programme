class Shrimp

  p 'Yes!!!! it is working !!!  ====================================='
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  end

end