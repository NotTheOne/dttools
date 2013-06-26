class InsightsController < ApplicationController

	def index
		@insights = Insight.all
	end

	def new
		@insight = Insight.new
	end

	def create
		@insight = Insight.new(params[:insight])
		@insight.save
		redirect_to new_insight_path
	end

end