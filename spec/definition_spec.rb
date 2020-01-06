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
    Definition.clear
  end

  describe('#==') do
    it('two definitions are equal if their text strings match exactly') do
      definition1 = Definition.new("Example Definition", @word.id, nil)
      definition2 = Definition.new("Example Definition", @word.id, nil)
      expect(definition1).to(eq(definition2))
    end
  end

  describe('#save') do
    it('stores a definition in a class variable') do
      definition = Definition.new("Example Definition", @word.id, nil)
      definition.save
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('.find') do
    it('accesses a song from the class variable by its id number') do
      definition = Definition.new("Example Definition", @word.id, nil)
      definition.save
      expect(Definition.find(1)).to(eq(definition))
    end
  end

end
