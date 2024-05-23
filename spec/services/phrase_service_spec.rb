require 'rails_helper'

RSpec.describe PhraseService, :vcr do
  let!(:service) { PhraseService.new }

  it 'exists' do
    expect(service).to be_a PhraseService
  end

  it 'establishes a connection' do
    expect(service.conn).to be_a Faraday::Connection
  end

  it 'retrieves phrases with explanation' do
    VCR.use_cassette("Phrases/retrieve_all_matching_phrases", record: :new_episodes) do
      phrases = service.phrases("exhausted")
      
      expect(phrases).to be_a Hash
      expect(phrases[:result]).to be_an Array
      results = phrases[:result]

      expect(results.first).to have_key(:term)
      expect(results.first).to have_key(:explanation)
      expect(results.first).to have_key(:example)
    end
  end
end