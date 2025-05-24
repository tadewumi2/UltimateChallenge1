require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.

#dog_breeds.each do |dog|
#	puts dog
#end

dog_breeds.each do | breeds, subbreeds |
	puts "*#{breeds}
				*#{subbreeds}"
end