require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

count = trees.count { |tree| tree["common_name"] == "black ash"}
puts "Number of all Ash trees =  #{count}"