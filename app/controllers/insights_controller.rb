class InsightsController < ApplicationController

	def index
		@insights = Insight.all
	end

	def new
		@insight_matrix = InsightMatrix.find(params[:insight_matrix_id])
		@insight = Insight.new
	end

	def create
		@insight_matrix = InsightMatrix.find(params[:insight_matrix_id])
		@insight = Insight.new(params[:insight])
		@insight.insight_matrix = @insight_matrix

		if @insight.save
			redirect_to insight_matrix_path(@insight_matrix), notice: 'Successfully added insight'
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
		@insight_matrix = InsightMatrix.find(params[:insight_matrix_id])
		@insight = Insight.find(params[:id])
		@insight.destroy
		redirect_to insight_matrix_path(@insight_matrix)
	end

end
