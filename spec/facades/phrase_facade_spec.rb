require 'rails_helper'

RSpec.describe PhraseFacade do
  it 'retrieves phrase data and make a phrase poro' do
    VCR.use_cassette("PhraseFacade/create_phrase_poro", record: :new_episodes) do
      phrase_specs = PhraseFacade.phrases("exhausted")
      expect(phrase_specs.first).to be_a Phrase
    end
  end
end