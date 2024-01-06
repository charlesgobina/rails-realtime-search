class FindsController < ApplicationController

  def index
    # @search_results = Find.all
    @search_results = article(params[:query])
    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end


  private

  def article(query)
    options = Find.all
    options = options.where("query LIKE ?", "%#{query}%") if query.present?
    options = options.order(created_at: :desc)
  end  
end
