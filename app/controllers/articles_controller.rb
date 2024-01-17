class ArticlesController < ApplicationController
  def index
    api_key = Rails.application.credentials.api_key
    search_term = params[:search]
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{search_term}&apiKey=#{api_key}")
    render json: response.parse(:json)
  end
end
