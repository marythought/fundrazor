class SocialSharesController < ApplicationController
  before_action :set_social_share, only: [:show, :edit, :update, :destroy]

  # GET /social_shares
  # GET /social_shares.json
  def index
    @social_shares = SocialShare.all
  end

  # GET /social_shares/1
  # GET /social_shares/1.json
  def show; end

  # GET /social_shares/new
  def new
    @social_share = SocialShare.new
  end

  # GET /social_shares/1/edit
  def edit; end

  # POST /social_shares
  # POST /social_shares.json
  def create
    @social_share = SocialShare.new(social_share_params)

    if @social_share.save
      redirect_to @social_share, notice: 'Social share was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_shares/1
  # PATCH/PUT /social_shares/1.json
  def update
    if @social_share.update(social_share_params)
      redirect_to @social_share, notice: 'Social share was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_shares/1
  # DELETE /social_shares/1.json
  def destroy
    @social_share.destroy
    redirect_to social_shares_url, notice: 'Social share was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_social_share
    @social_share = SocialShare.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def social_share_params
    params.require(:social_share).permit(:solicitation_id, :type)
  end
end
