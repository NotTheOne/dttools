class InsightsController < ApplicationController

	def index
	end

	def new
		@insight = Insight.new
	end

end