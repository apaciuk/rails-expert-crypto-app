class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    # Fetch News and Info Data
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
    # Fetch Prices Data
    @prices_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,XRP,ETH,BCH,EOS,LTC,ADA,XLM,MIOTA,USDT,TRX&tsyms=USD'
    @prices_uri = URI(@prices_url)
    @prices_response = Net::HTTP.get(@prices_uri)
    @prices = JSON.parse(@prices_response)
  end

  def prices

  end

  def terms
  end

  def privacy
  end
end
