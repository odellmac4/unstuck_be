require 'rails_helper'

RSpec.describe "Phrases index" do
  it 'retrieves all phrases from common sayings' do
    VCR.use_cassette("Phrases/index_request", record: :new_episodes) do
      get '/api/v1/phrases?phrase=exhausted'

      expect(response).to be_successful
      binding.pry
      phrase_response = JSON.parse(response.body, symbolize_names: true)

      expect(phrase_response[:data]).to be_an Array
    end
  end
end