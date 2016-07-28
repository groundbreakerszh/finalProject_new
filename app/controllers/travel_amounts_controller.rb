class TravelAmountsController < ApplicationController
  before_action :set_travel_amount, only: [:show, :edit, :update, :destroy]

  # GET /travel_amounts
  # GET /travel_amounts.json
  def index
    @travel_amounts = TravelAmount.all
  end

  # GET /travel_amounts/1
  # GET /travel_amounts/1.json
  def show
  end

  # GET /travel_amounts/new
  def new
    @travel_amount = TravelAmount.new
  end

  # GET /travel_amounts/1/edit
  def edit
  end

  # POST /travel_amounts
  # POST /travel_amounts.json
  def create
    @travel_amount = TravelAmount.new(travel_amount_params)

    respond_to do |format|
      if @travel_amount.save
        format.html { redirect_to @travel_amount, notice: 'Travel amount was successfully created.' }
        format.json { render :show, status: :created, location: @travel_amount }
      else
        format.html { render :new }
        format.json { render json: @travel_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_amounts/1
  # PATCH/PUT /travel_amounts/1.json
  def update
    respond_to do |format|
      if @travel_amount.update(travel_amount_params)
        format.html { redirect_to @travel_amount, notice: 'Travel amount was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_amount }
      else
        format.html { render :edit }
        format.json { render json: @travel_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_amounts/1
  # DELETE /travel_amounts/1.json
  def destroy
    @travel_amount.destroy
    respond_to do |format|
      format.html { redirect_to travel_amounts_url, notice: 'Travel amount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_amount
      @travel_amount = TravelAmount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_amount_params
      params.require(:travel_amount).permit(:travelamount)
    end
end
