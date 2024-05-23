class PhraseSerializer
  include JSONAPI::Serializer
  attributes :term, :explanation, :example
end
