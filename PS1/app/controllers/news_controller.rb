class NewsController < ApplicationController

  def index
    require 'nokogiri'
    require 'open-uri'

    @doc = Nokogiri::HTML(open("http://news.google.com/"))

    @meta = @doc.at('meta[name="description"]')['content']
  end

end
