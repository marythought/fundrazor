class DonationsController < ApplicationController
  before_filter :load_campaign
  before_filter :load_solicitation
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_donation, only: [:show, :edit, :update, :destroy]
  before_action :authorize_donor, only: [:edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  # GET /donations/1.json
  def show; end

  # GET /donations/new
  def new
    @donation = Donation.new
  end

  # GET /donations/1/edit
  def edit; end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    @donation.solicitation = @solicitation

    if @donation.save
      redirect_to campaign_solicitation_path(@campaign, @solicitation), notice: 'Donation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    if @donation.update(donation_params)
      redirect_to campaign_solicitation_path(@campaign, @solicitation), notice: 'Donation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    redirect_to donations_url, notice: 'Donation was successfully destroyed.'
  end

  private

  def load_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  def load_solicitation
    @solicitation = Solicitation.find(params[:solicitation_id])
  end

  def authorize_donor
    redirect_to campaign_solicitation_path(@campaign, @solicitation) unless @donation.user == current_user
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_donation
    @donation = Donation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def donation_params
    params.require(:donation).permit(:amount, :comment)
  end
end
