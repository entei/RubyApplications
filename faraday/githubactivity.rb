require 'faraday'
require 'json'

conn = Faraday.new(:url => 'http://osrc.dfm.io/') do |c|
  c.use Faraday::Request::UrlEncoded  # encode request params as "www-form-urlencoded"
  c.use Faraday::Response::Logger     # log request & response to STDOUT
  c.use Faraday::Adapter::NetHttp     # perform requests with Net::HTTP
end

response = conn.get '/benny1992.json'     # GET http://sushi.com/nigiri/sake.json
json = response.body

datahash = JSON.parse(json)
puts "#{datahash["name"]} has following Langauge activities:"
datahash["usage"]["languages"].each.with_index(1) do |languagehash, index = 1|
	puts "#{index}: #{languagehash["language"]} - #{languagehash["count"]} commits"
end
#conn.post '/nigiri', { :name => 'Maguro' }  # POST "name=maguro" to http://sushi.com/nigiri