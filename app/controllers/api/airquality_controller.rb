class Api::AirqualityController < ApplicationController
  def index
    response = HTTP.get("http://api.airvisual.com/v2/city?city=#{params[:city]}&state=#{params[:state]}&country=USA&key=#{Rails.application.credentials.air_quality_api[:api_key]}")
    render json: response.parse
  end
end
