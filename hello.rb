require 'rakuten_web_service'
require 'sinatra'

get '/' do 
  RakutenWebService.configuration do |c|
    c.application_id = ENV["APPID"]
    c.affiliate_id = ENV["AFID"]
  end
  
  @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 40, :sex => 1)
  erb :item_ranking_man
end
