require "nokogiri"
require "curb"
require "pry"
require "open-uri"

# # http = Curl.get("http://www.repubblica.it/")
# page = Nokogiri::HTML(open("https://www.nzz.ch/"))
# # puts page.at_css('.title__name')[0].name
# puts page.at_css(".title__name")

def add_numbers(a, b)
  return a + b
end

add_numbers(12, 13)


# define a func takes 2 numbers and mult together and returns the result


def mul_numbers(c, d, e)
  add_numbers(c, d) * e
end

mul_numbers(3, 5, 8)


# add them tog using my previous func
