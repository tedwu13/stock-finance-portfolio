class StocksController < ApplicationController
		def search
			@stock = Stock.new_from_lookup(params[:stock])
			render json: @stock # render json display of the stock
    end
end
