
require 'nokogiri'
require 'open-uri'
def crypto_name
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	arr_name = []
	all_data_name = page.xpath('//tr/td[3]/div')
	all_data_name.each do |all_data_name|
	arr_name << all_data_name.text
	end
	return arr_name
end
#print crypto_name

def crypto_price
	
        page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
        arr_price = []
        all_data_price = page.xpath('//tr/td[5]/a')
        all_data_price.each do |all_data_price|
 	arr_price << all_data_price.text
        end
        return arr_price
end
                                #print crypto_price

def name_and_price
       name_and_price_arr = Hash.new
       arr_name = crypto_name
       arr_price = crypto_price
       name_and_price_arr = arr_name.zip(arr_price).to_h
       return name_and_price_arr
end
#print name_and_price_arr
def hashes
each_np = []
name_and_price_arr = name_and_price
name_and_price_arr.each do |name_and_price_arr|
each_np << {name_and_price_arr[0] => name_and_price_arr[1]}
end
puts each_np
end
hashes
