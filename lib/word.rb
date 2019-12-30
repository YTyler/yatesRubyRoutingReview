class Word

	@@words = {}
	@@total_words = 0;

	attr_reader :id, :name

	def initialize(name, id)
		@name = name
		@id = id || @@total_words += 1
	end

	def ==(other_word)
		self.name.eql?(other_word.name)
	end

	def keep
		@@words[self.id] = Word.new(self.name, self.id)
	end

	def self.look_up(id)
		@@words[id]
	end

	def self.all
		@@words.values
	end

	def delete
		@@words.delete(self.id)
	end

	def self.clear
		@@words = {}
		@@total_words = 0
	end

end
