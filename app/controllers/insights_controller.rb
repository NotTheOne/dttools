class InsightsController < ApplicationController

	def index
		@insights = Insight.all
	end

	def new
		@insight = Insight.new
	end

	def create
		@insight = Insight.new(params[:insight])
		
		if @insight.save
			redirect_to new_insight_path, notice: 'Successfully added insight'
		else
			flash[:error] = 'Failed to add insight'
			render :new
		end
	end

end