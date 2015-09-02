## Rack is very simple. Give it an object, it will call the "call" method on that object and pass it information
## about the web request. The return of that method should be an array with information about the response.
## That's all there is to it. Simple huh? Ok lets build a simple class to handle this.

class RequestController

  def call(env)
    [200, {}, ["Hello World"]]
  end

end