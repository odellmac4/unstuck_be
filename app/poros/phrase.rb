class Phrase
  attr_reader :term, :explanation, :example, :id

  def initialize(data)
    @id = nil
    @term = data[:term]
    @explanation = data[:explanation]
    @example = data[:example]
  end
end