MyApp = proc do |env|
  [200, {'Content-Type'=> 'text/plain'}, ['ok']]
end

class MyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['Path_INFO'] == '/'
      @app.call(env)
    else
      [404, {'Content-type' => 'text/plain'}, ['not ok']]
    end
  end
end

use MyMiddleware
run MyApp
