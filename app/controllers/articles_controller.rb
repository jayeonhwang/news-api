class ArticlesController < ApplicationController
  def index
    api_key = Rails.application.credentials.api_key
    response = HTTP.get("https://newsapi.org/v2/everything?q=cat&apiKey=#{api_key}")
    render json: response.parse(:json)
  end
end
