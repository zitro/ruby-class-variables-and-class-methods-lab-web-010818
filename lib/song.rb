require 'pry'

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
@@artists << artist
@@genres << genre
end

def self.count
	@@count
end

def self.artists
	@@artists.uniq
end

def self.genres
	@@genres.uniq
end

def self.genre_count
	genre_hash = {}
	@@genres.each do |g|
		if genre_hash.keys.include?(g)
			genre_hash[g] += 1
		else
			genre_hash[g] = 1
		end
	end
	genre_hash
end

def self.artist_count
	artist_hash = {}
	@@artists.each do |a|
		if artist_hash.keys.include?(a)
			artist_hash[a] += 1
		else
			artist_hash[a] = 1
		end
	end
	artist_hash
end
end
