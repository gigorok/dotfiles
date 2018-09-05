#!/usr/bin/env rvm system do ruby

require 'open-uri'
require 'json'
require 'byebug'

# puts '$40.29'

json = open('https://cryptomate.gigorok.name/tmux-bar').read
data = JSON.parse(json)
# {"uah"=>{"sell_price"=>nil, "buy_price"=>nil, "deposit"=>"0.00016205"}, "btc"=>{"sell_price"=>"7090.0", "buy_price"=>"7069.00000001", "deposit"=>"0.0018312"}, "eth"=>{"sell_price"=>"293.625", "buy_price"=>"293.40000001", "deposit"=>"0.0283047"}, "etc"=>{"sell_price"=>"13.17571926", "buy_price"=>"13.10816686", "deposit"=>"0.66333588"}, "usd"=>{"sell_price"=>nil, "buy_price"=>nil, "deposit"=>"0.12992759"},
# "ltc"=>{"sell_price"=>"62.63355505", "buy_price"=>"62.20093332", "deposit"=>"0.14883287"}}
def calc(code, h)
  return 0 if code == 'uah'
  return h['deposit'].to_f if code == 'usd'
  h['deposit'].to_f * h['buy_price'].to_f * (1-0.2/100)
end
puts '$%.2f' % data.map { |k, h| calc(k, h) }.inject(:+)
