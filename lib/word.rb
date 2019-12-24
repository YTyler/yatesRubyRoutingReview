class Word

@@words = {}
@total_words = 0;

attr_reader :id

def initialize(name, id)
	@name = name
	@id = id || @@total_words += 1
end

def look_up
	@@words[id]
end

def keep
	@@words[self.id] = Word.new(self.name, self.id)
end

def self.all_words
	@@words.values
end

def delete
	@@albums.delete(self.id)
end
