require 'rspec'
require 'pry'
require 'word'
require 'definition'

describe('.#Definition') do

  before(:each) do
    @word = Word.new("Test", nil)
    @word.keep
  end

  after(:each) do
    Word.clear
  end

  describe('#==') do
    it('two definitions are equal if their text strings match exactly') do
      definition1 = Definition.new("Example Definition", @word.id, nil)
      definition2 = Definition.new("Example Definition", @word.id, nil)
      expect(definition1).to(eq(definition2))
    end
  end

end
