class TopStandingsController < ApplicationController

  def index
    @top_standings = TopStanding.all.order(:order => :desc)
  end

  def show
    @top_standing = TopStanding.find(params[:id])
    @top_standing_entries = TopStanding.top_standing_entries.all
  end

end
