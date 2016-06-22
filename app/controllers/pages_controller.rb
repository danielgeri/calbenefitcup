class PagesController < ApplicationController
  def show
    if params[:parent_permalink].nil?
      @page = Page.includes(:headlines, :images)
                  .where(is_draft: false, parent_page_id: nil)
                  .find_by(permalink: params[:permalink])
    else
      parent_page = Page.includes(:subpages, :images)
                        .where(is_draft: false)
                        .find_by(permalink: params[:parent_permalink])
      @page = parent_page.find_subpage(params[:permalink])
    end
    redirect_to @page.forward_url unless @page.forward_url.empty?

    @images = @page.find_images unless @page.images.empty?
    @headlines = @page.find_headlines unless @page.headlines.empty?
    @nav = @page.construct_nav
    @meet = @page.find_meet
    @meet_open = (@meet.register_by.blank? || @meet.register_by >= Date.today) if @meet
  end
end
