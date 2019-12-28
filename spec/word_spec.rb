require('word')
require('rspec')

describe('.#Word') do

	before(:each) do
		@word1 = Word.new("Test", nil)
		@word2 = Word.new("Example", nil)
		@word1.keep
		@word2.keep
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

	describe('#keep/#all') do
		it('stores words in a class variable, #all retrives them') do
			expect(Word.all).to(eq([@word1, @word2]))
		end
	end

	describe('.look_up') do
		it('returns a word based on its id') do
			expect(Word.look_up(2)).to(eq(@word2))
		end
	end

	describe('#delete') do
		it('removes a word from class variable storage') do
			@word1.delete
			expect(Word.all).to(eq([@word2]))
		end
	end

end
