class InsightMatricesController < ApplicationController
  def index
    @insight_matrices = InsightMatrix.all
  end

  def new
    @insight_matrix = InsightMatrix.new
  end

  def show
    @insight_matrix = InsightMatrix.find(params[:id])
    @insights = @insight_matrix.insights
    @insight = Insight.new

    @insights.each do |source|
      @insights.each do |target|
        @insight_matrix.insight_relationships.create(source: source, target: target)
      end
    end
  end

  def update
    @insight_matrix = InsightMatrix.find(params[:id])
    @insight_matrix.update_attributes(params[:insight_matrix])
    redirect_to insight_matrix_path(@insight_matrix)
  end

  def create
    @insight_matrix = InsightMatrix.create(params[:insight_matrix])
    if @insight_matrix.save
      redirect_to insight_matrix_path(@insight_matrix)
    else
      render 'new'
    end
  end
end
