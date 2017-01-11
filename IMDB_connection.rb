require 'net/http'
require 'uri'
require 'json'
require_relative "Movie.rb"

def getByTitle(name, id)
  uri = URI('http://www.omdbapi.com/?t=' + name +'&y=&plot=short&r=json')
  res = Net::HTTP.get(uri)
  json = JSON.parse(res)
  return Movie.new(id, json["Title"], json["Year"], json["Director"])
end

def search(name, id)
  uri = URI('http://www.omdbapi.com/?s=' + name +'&y=&plot=short&r=json')
  res = Net::HTTP.get(uri)
  json = JSON.parse(res)
  movieList = Array.new
  i = 0
  while !json["Search"][i].nil?
    movieList.push(getByTitle(json["Search"][i]["Title"], id))
    i += 1
  end
  return movieList
end
