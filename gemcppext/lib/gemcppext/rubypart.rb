require 'gemcppext/cpppart'

def ruby_call
  puts "Hello from Ruby"
  fibonacci

  testobj = TestClass.new
  puts testobj
end