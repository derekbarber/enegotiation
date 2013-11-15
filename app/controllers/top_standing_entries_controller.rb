class TopStandingEntriesController < ApplicationController
  before_action :set_top_standing_entry, only: [:show, :edit, :update, :destroy]

  # GET /top_standing_entries
  # GET /top_standing_entries.json
  def index
    @top_standing_entries = TopStandingEntry.all
  end

  # GET /top_standing_entries/1
  # GET /top_standing_entries/1.json
  def show
  end

  # GET /top_standing_entries/new
  def new
    @top_standing_entry = TopStandingEntry.new
  end

  # GET /top_standing_entries/1/edit
  def edit
  end

  # POST /top_standing_entries
  # POST /top_standing_entries.json
  def create
    @top_standing_entry = TopStandingEntry.new(top_standing_entry_params)

    respond_to do |format|
      if @top_standing_entry.save
        format.html { redirect_to @top_standing_entry, notice: 'Top standing entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @top_standing_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @top_standing_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_standing_entries/1
  # PATCH/PUT /top_standing_entries/1.json
  def update
    respond_to do |format|
      if @top_standing_entry.update(top_standing_entry_params)
        format.html { redirect_to @top_standing_entry, notice: 'Top standing entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @top_standing_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_standing_entries/1
  # DELETE /top_standing_entries/1.json
  def destroy
    @top_standing_entry.destroy
    respond_to do |format|
      format.html { redirect_to top_standing_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_standing_entry
      @top_standing_entry = TopStandingEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def top_standing_entry_params
      params.require(:top_standing_entry).permit(:top_standing_id, :rank, :player, :coach, :country, :comments)
    end
end
