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

    doc = Nokogiri::HTML(open("https://news.google.com/"))
    articles = doc.css("article")

    figures = doc.css("figure")
    images = doc.css("img")

    @headlines = []

    for article in articles
      count = 0
      href_value = article.css("a").attr("href").text
      link = href_value.split(".")[1]

      @headline_data = {
          'text' => article.css("h3").text,
          'href' => "https://news.google.com" + link,
          'image' => images[count].attr("src")
      }
      @headlines.append(@headline_data)
      # @headlines.append(article.css("h3").text)
      count = count + 1
    end

    # @image_links = []
    # for image in images
    #   @image_links.append(images[0].attr("src"))
    # end
    # render plain: headlines
    # render plain: articles[0].css("h3").text
  end
end
