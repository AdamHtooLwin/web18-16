class Ps1Controller < ApplicationController
  def index

  end

  def divide_by_zero_exception
    logger.debug "IT'S A TRAP!"
    a = 5/0
  end

  def news
    require 'nokogiri'
    require 'open-uri'

    @doc = Nokogiri::HTML(open("http://news.google.com/"))

    @meta = @doc.at('meta[name="description"]')['content']
  end
end
