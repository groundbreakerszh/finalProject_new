class CitiesToWorksController < ApplicationController
  before_action :set_cities_to_work, only: [:show, :edit, :update, :destroy]

  # GET /cities_to_works
  # GET /cities_to_works.json
  def index
    @cities_to_works = CitiesToWork.all
  end

  # GET /cities_to_works/1
  # GET /cities_to_works/1.json
  def show
  end

  # GET /cities_to_works/new
  def new
    @cities_to_work = CitiesToWork.new
  end

  # GET /cities_to_works/1/edit
  def edit
  end

  # POST /cities_to_works
  # POST /cities_to_works.json
  def create
    @cities_to_work = CitiesToWork.new(cities_to_work_params)

    respond_to do |format|
      if @cities_to_work.save
        format.html { redirect_to @cities_to_work, notice: 'Cities to work was successfully created.' }
        format.json { render :show, status: :created, location: @cities_to_work }
      else
        format.html { render :new }
        format.json { render json: @cities_to_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities_to_works/1
  # PATCH/PUT /cities_to_works/1.json
  def update
    respond_to do |format|
      if @cities_to_work.update(cities_to_work_params)
        format.html { redirect_to @cities_to_work, notice: 'Cities to work was successfully updated.' }
        format.json { render :show, status: :ok, location: @cities_to_work }
      else
        format.html { render :edit }
        format.json { render json: @cities_to_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities_to_works/1
  # DELETE /cities_to_works/1.json
  def destroy
    @cities_to_work.destroy
    respond_to do |format|
      format.html { redirect_to cities_to_works_url, notice: 'Cities to work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cities_to_work
      @cities_to_work = CitiesToWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cities_to_work_params
      params.require(:cities_to_work).permit(:city)
    end
end
