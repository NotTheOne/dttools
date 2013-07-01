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
			render :new # this loops back to new
		end
	end

	def show
		# look at birds to look at the controllers
		@insight =  Insight.find(params[:id])
	end


	def edit
	
	end


	def destroy
		@insight = Insight.find(params[:id])
		@insight.destroy
		redirect_to insights_path
	end

end