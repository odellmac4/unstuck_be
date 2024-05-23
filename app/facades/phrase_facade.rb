class PhraseFacade
  def self.phrases(phrase)
    phrase_data = PhraseService.new.phrases(phrase)
    phrases = phrase_data[:result].map {|phrase| phrase = Phrase.new(phrase)}
  end
end