class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
    @user = User.find(@offer.user_id)
  end

  def modal
    @offer = Offer.find(params[:id])
    @user = User.find(@offer.user_id)

    respond_to do |format|
      format.html { render partial: 'offers/modal' }
    end
  end
end
