require 'rails_helper'

RSpec.describe Phrase do
  before(:each) do
    phrase_data = {
      term: "knackered", 
      explanation: "Exhausted; very tired", 
      example: "I can't go out tonight, I'm knackered"
    }

    @phrase = Phrase.new(phrase_data)
  end

  it 'exists' do
    expect(@phrase).to be_a Phrase
  end

  it 'has attributes' do
    expect(@phrase.term).to eq("knackered")
    expect(@phrase.explanation).to eq("Exhausted; very tired")
    expect(@phrase.example).to eq("I can't go out tonight, I'm knackered")
  end
end