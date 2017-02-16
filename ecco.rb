require "curb"
require "nokogiri"
require "pry"
require "mechanize"

def get_page(url)
  return Nokogiri::HTML(Curl.get(url).body_str)
end

def image
  pic = Mechanize.new
end

def nzz
  doc = get_page("https://www.nzz.ch/")
  doc.css('.title__name')[0].inner_text
  link = 'http://nzz-img.s3.amazonaws.com/2017/2/14/b64d9e24-33e4-4fb9-bfaf-6105237fad75.jpeg'
end

def repubblica
  doc = get_page("http://www.repubblica.it/")
  #doc.css('article').first.css('a img').first.attribute("alt").text
  doc.css('article > header > h1').map { |h| h.children.first.text }.first
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


# binding.pry

puts nzz

puts repubblica

puts daily_mail

puts elpais

puts ny_times
