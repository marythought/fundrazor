class SolicitationsController < ApplicationController
  before_filter :load_campaign
  before_action :set_solicitation, only: [:show, :edit, :update, :destroy, :email]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy, :email]
  before_action :authorize_fundraiser, only: [:edit, :update, :destroy]
  # GET /solicitations
  # GET /solicitations.json
  def index
    redirect_to campaign_path(@campaign)
  end

  # GET /solicitations/1
  # GET /solicitations/1.json
  def show; end

  # GET /solicitations/new
  def new
    @solicitation = Solicitation.new
  end

  # GET /solicitations/1/edit
  def edit; end

  # POST /solicitations
  # POST /solicitations.json
  def create
    @solicitation = Solicitation.new(solicitation_params)
    @solicitation.campaign = @campaign
    @solicitation.user = current_user

    if @solicitation.save
      redirect_to campaign_solicitation_path(@campaign, @solicitation), notice: 'Solicitation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solicitations/1
  # PATCH/PUT /solicitations/1.json
  def update
    if @solicitation.update(solicitation_params)
      redirect_to campaign_solicitation_path(@campaign, @solicitation), notice: 'Solicitation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solicitations/1
  # DELETE /solicitations/1.json
  def destroy
    @solicitation.destroy
    redirect_to solicitations_url, notice: 'Solicitation was successfully destroyed.'
  end

  def email
    contact = params[:contact]
    SolicitationMailer.solicitation_email(@campaign, @solicitation, current_user, contact).deliver_now
    redirect_to campaign_solicitation_path(@campaign, @solicitation), notice: 'Email sent.'
  end

  private

  def authorize_fundraiser
    redirect_to campaign_solicitation_path(@campaign, @solicitation) unless @solicitation.user == current_user
  end

  def load_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_solicitation
    @solicitation = Solicitation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def solicitation_params
    params.require(:solicitation).permit(:goal, :main_image, :text)
  end
end
