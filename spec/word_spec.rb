require('word')
require('rspec')

describe('.#Word') do

	before(:each) do
		@word1 = Word.new("Test", nil)
		@word2 = Word.new("Example", nil)
		puts @word1
	end

	after(:each) do
		Word.clear()
	end

	describe('#==') do
		it('two words are equal if they have the same attributes')  do
			other_word = Word.new("Test", nil)
			expect(@word1 ==  other_word).to(eq(true))
		end
	end

	describe('#keep') do
		it('stores words in a class variable') do
			@word1.keep
			@word2.keep
			expect(Word.all).to(eq([@word1, @word2]))
		end
	end


end
