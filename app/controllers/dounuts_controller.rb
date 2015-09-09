class DounutsController < ApplicationController
  before_action :set_dounut, only: [:show, :edit, :update, :destroy]

  def home
  end
  # GET /dounuts.json

  def about
  end


  def index
    @dounuts = Dounut.all
  end

  # GET /dounuts/1
  # GET /dounuts/1.json
  def show
  end

  # GET /dounuts/new
  def new
    @dounut = Dounut.new
  end

  # GET /dounuts/1/edit
  def edit
  end

  # POST /dounuts
  # POST /dounuts.json
  def create
    @dounut = Dounut.new(dounut_params)

    respond_to do |format|
      if @dounut.save
        format.html { redirect_to @dounut, notice: 'Dounut was successfully created.' }
        format.json { render :show, status: :created, location: @dounut }
      else
        format.html { render :new }
        format.json { render json: @dounut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dounuts/1
  # PATCH/PUT /dounuts/1.json
  def update
    respond_to do |format|
      if @dounut.update(dounut_params)
        format.html { redirect_to @dounut, notice: 'Dounut was successfully updated.' }
        format.json { render :show, status: :ok, location: @dounut }
      else
        format.html { render :edit }
        format.json { render json: @dounut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dounuts/1
  # DELETE /dounuts/1.json
  def destroy
    @dounut.destroy
    respond_to do |format|
      format.html { redirect_to dounuts_url, notice: 'Dounut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dounut
      @dounut = Dounut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dounut_params
      params.require(:dounut).permit(:name, :topping, :topping, :cost, :image)
    end
end
