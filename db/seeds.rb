# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#

# Criando exchanges
Exchange.create(name: "BitcoinToYou",
                home_url: "https://www.bitcointoyou.com/",
                documentation_url: "https://www.bitcointoyou.com/DocumentacaoAPI.aspx")
Exchange.create(name: "MercadoBitcoin",
                home_url: "https://www.mercadobitcoin.net/",
                documentation_url: "https://www.mercadobitcoin.net/api/")

# Criando tickers
Exchange.all.each do |e|
    Ticker.create(exchange_id: e.id)
end
