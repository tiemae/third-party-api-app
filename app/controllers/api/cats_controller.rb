class Api::CatsController < ApplicationController
   
   def index 
    @cats = HTTP.headers({"x-api-key" => ENV["api_key"]}).get("https://api.thecatapi.com/v1/images/search").parse 
    # @cats = HTTP.get("https://api.thecatapi.com/v1/images/").parse
    return 'index.json.jbuilder'
  end

end
