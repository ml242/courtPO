require 'httparty'
require 'json'
require 'pry'

url = 'https://raw.github.com/ga-students/WDI_NYC_Hash/master/week_03/d03/json_files/fb_small.json?login=jonleung&token=00d9d6609b67c15327252f90dd5971dd'

response = HTTParty.get(url)
parsed = JSON.parse(response.body)
parsed['data']
binding.pry
puts parsed

