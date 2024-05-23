class PhraseService
  def phrases(phrase)
    get_url("/services/v2/phrases.php?phrase=#{phrase}&format=json")
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: "https://www.stands4.com") do |faraday|
      faraday.params[:tokenid] = Rails.application.credentials.phrases[:token]
      faraday.params[:uid] = Rails.application.credentials.phrases[:uid]
    end
  end
end