class Definition

  attr_reader :id
  attr_accessor :text, :word_id

  @@definitions = {}
  @@total_defs = 0

  def initialize(text, word_id, id)
    @text = text
    @word_id = word_id
    @id = id || @@total_defs += 1
  end

  def ==(other_def)
    (self.text() == other_def.text()) && (self.word_id() == other_def.word_id())
  end

  def self.clear()
    @@definitions = {}
    @@total_defs = 0
  end

end
