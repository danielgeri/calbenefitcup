class PagesController < ApplicationController
  def show
    @page = Page.find_by_permalink!(params[:id])
    @nav = Page.includes(:subpages).
           where(is_draft: false, is_displayed: true).
           order(:menu_index)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end
end
