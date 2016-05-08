class PagesController < ApplicationController
  def show
    @meet = Meet.find_by(is_current: true)
    @meet_range = @meet.date_range if @meet
    @page = Page.includes(:headlines, :images).find_by_permalink!(params[:id])
    unless @page.images.empty?
      @images = @page.images.order(:slide_index)
    end
    unless @page.headlines.empty?
      @headlines = @page.headlines.order(published_on: :desc)
    end
    @nav = Page.includes(:subpages).
           where(is_draft: false, is_displayed: true).
           order(:menu_index)
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @page }
    # end
  end
end
