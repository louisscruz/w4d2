class CatRentalRequestsController < ApplicationController
  before_action :set_cat, only: [:index, :new, :create]
  before_action :set_rental, only: [:approve, :deny]

  def index
    @cat_rental_requests = @cat.cat_rental_requests
  end

  def new
  end

  def create
    @cat_rental_request = CatRentalRequest.new(cat_rental_request_params)

    respond_to do |format|
      if @cat_rental_request.save
        format.html { redirect_to cat_url(@cat.id), notice: 'Cat rental request was successfully created.' }
        format.json { render cat_url(@cat.id), status: :created, location: @cat_rental_request }
      else
        format.html { redirect_to action: :new }
        format.json { render json: @cat_rental_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve
    if @cat_rental_request.approve!
      redirect_to :back
    else

    end
  end

  def deny
    if @cat_rental_request.deny!
      redirect_to :back
    else

    end
  end

  private

  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date)
  end

  def set_cat
    @cat = Cat.find(params[:cat_id])
  end

  def set_rental
    @cat_rental_request = CatRentalRequest.find(params[:id])
  end
end
