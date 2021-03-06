class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]


  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def edit
  end

  def create
    @offer = Offer.new(offer_params)
      if @offer.save
        redirect_to @offer, notice: 'Offer was successfully created.'
      else
      render :new
      end
  end

  def update
      if @offer.update(offer_params)
          redirect_to @offer, notice: 'Offer was successfully updated.'

      else
      render :edit
      end
  end

  def destroy
    @offer.destroy
    redirect_to offers_url, notice: 'Offer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:description, :price, :address)
    end
end
