class PagesController < ApplicationController
  def show
    @page = Page.includes(:headlines, :images)
                .where(is_draft: false)
                .find_by(permalink: params[:permalink])
    redirect_to @page.forward_url unless @page.forward_url == ''
    @images = @page.images.empty? ? nil : @page.images.order(:slide_index)
    @headlines = @page.headlines.empty? ? nil :
                   @page.headlines.order(published_on: :desc)
    @nav = Page.where(is_draft: false, is_displayed: true)
               .where.not(permalink: 'home')
               .order(parent_page_id: :asc, menu_index: :asc)
               .pluck(:permalink, :title, :id, :parent_page_id, :menu_index)
               .group_by { |menu_props| menu_props[3] }
    @meet = Meet.find_by(is_current: true)
    @meet_range = @meet.date_range if @meet
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @page }
    # end
  end
end
