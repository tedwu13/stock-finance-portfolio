# in the model itself you have new_from_lookup(ticketsymbol)
# use the stock quote gem to get ticket_symbol

class Stock < ApplicationRecord
	# def self.new_from_lookup(ticker_symbol)
	# 	looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
	# 	# Stock.new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.l)
	# 	# why is is new not Stock.new
	# 	new(ticker: looked_up_stock.symbol, last_price: looked_up_stock.l)
	# end
	def self.new_from_lookup(ticker_symbol)
		looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
		new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
	end
end
