class PagesController < ApplicationController
  def show
    @meet = Meet.find_by(is_current: true)
    @meet_range = @meet.date_range if @meet
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
