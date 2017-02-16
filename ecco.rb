require "curb"
require "nokogiri"
require "pry"


def get_page(url)
  return Nokogiri::HTML(Curl.get(url).body_str)
end


def nzz
  doc = get_page("https://www.nzz.ch/")
  doc.css('.title__name')[0].inner_text
end


def repubblica
  doc = get_page("http://www.repubblica.it/")
  header = doc.css('article').first.css('a img').first.attribute("alt").text
  description = doc.css('figcaption').text
  image = doc.css('article').first.css('img').first.attr('src')
  relative_link = doc.css('article').first.css('a').first.attr('href')
end

def daily_mail
  doc = get_page("http://www.dailymail.co.uk/home/index.html")
  doc.css('.linkro-darkred > a')[0].text
end

def elpais
  doc = get_page("http://elpais.com/")
  doc.css('.articulo-titulo > a')[0].text
end

def ny_times
  doc = get_page("https://www.nytimes.com/")
  doc.css('.story-heading')[0].text
end


binding.pry

puts nzz

puts repubblica

puts daily_mail

puts elpais

puts ny_times
