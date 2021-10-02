class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end

  def prices

  end

  def terms
  end

  def privacy
  end
end
