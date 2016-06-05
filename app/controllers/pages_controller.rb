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
      page = parent_page.subpages.select do |subpage|
        subpage[:permalink] == params[:permalink]
      end
      @page = page.first
    end

    redirect_to @page.forward_url unless @page.forward_url.empty?

    @images = @page.images.order(:slide_index) unless @page.images.empty?
    @headlines = @page.headlines.order(published_on: :desc) unless
      @page.headlines.empty?

    @nav = Page.where(is_draft: false, is_displayed: true)
               .where.not(permalink: 'home')
               .order(parent_page_id: :asc, menu_index: :asc)
               .pluck(:permalink, :title, :id, :parent_page_id, :menu_index)
               .group_by { |menu_props| menu_props[3] }

    @meet = Meet.includes(:page)
                .find_by(is_current: true)
    if @meet
      @meet_range = @meet.date_range
      @meet_gender = @meet.gender
      @meet_page_perm = @meet.page.permalink
    end
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @page }
    # end
  end
end
