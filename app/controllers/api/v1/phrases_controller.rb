class Api::V1::PhrasesController < ApplicationController
  def index
    phrases = PhraseFacade.phrases(params[:phrase])

    render json: PhraseSerializer.new(phrases), status: 200
  end
end