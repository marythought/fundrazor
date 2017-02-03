class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Campaign.active
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    # solicitations where campaign_id == @campaign.id.include donations include donation.users return s.amount raised and user email
    @top_amount = @campaign.fundraisers_by_amount_raised.select { |f| f[0] > 0 }
    # solicitations where campaign_id == @campaign.id.include donations and users, return user.email and d.size
    @top_number = @campaign.fundraisers_by_number_of_donations.select { |f| f[0] > 0 }
  end

  # GET /campaigns/new
  def new
    @campaign = Campaign.new
  end

  def edit; end

  def update
    if @campaign.update(campaign_params)
      redirect_to campaign_path(@campaign), notice: 'Campaign was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.'
  end

  # no edit/update/delete for now -- may add later, requires a campaign owner. for now anyone can can a campaign but no one can change or remove.

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(campaign_params)

    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def campaign_params
    params.require(:campaign).permit(:name, :goal, :start_date, :end_date, :active, :video_link)
  end
end
