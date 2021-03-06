# Simplest rack application
# run with rackup
# run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello from test"]] }

# Rack apps can also be plain ruby objects
# run with rackup
class RackApp
  def self.call(env)
    require 'pry'
    binding.pry
    [200, {"Content-Type" => "text/html"}, [File.read('index.html')]]
  end
end

run RackApp
