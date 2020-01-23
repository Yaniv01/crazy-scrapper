require 'open-uri'
require 'nokogiri'

url_page= "http://annuaire-des-mairies.com/val-d-oise.html"
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/avernes.html"))

def get_townhall_email(page)

	first_town_mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
puts first_town_mail


end
get_townhall_email(page)
