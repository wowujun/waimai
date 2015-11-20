class ProductclasController < ApplicationController
  before_action :set_productcla, only: [:show, :edit, :update, :destroy]

  # GET /productclas
  # GET /productclas.json
  def index
    @productclas = Productcla.all
  end

  # GET /productclas/1
  # GET /productclas/1.json
  def show
  end

  # GET /productclas/new
  def new
    @productcla = Productcla.new
  end

  # GET /productclas/1/edit
  def edit
  end

  # POST /productclas
  # POST /productclas.json
  def create
    @productcla = Productcla.new(productcla_params)

    respond_to do |format|
      if @productcla.save
        format.html { redirect_to @productcla, notice: 'Productcla was successfully created.' }
        format.json { render :show, status: :created, location: @productcla }
      else
        format.html { render :new }
        format.json { render json: @productcla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productclas/1
  # PATCH/PUT /productclas/1.json
  def update
    respond_to do |format|
      if @productcla.update(productcla_params)
        format.html { redirect_to @productcla, notice: 'Productcla was successfully updated.' }
        format.json { render :show, status: :ok, location: @productcla }
      else
        format.html { render :edit }
        format.json { render json: @productcla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productclas/1
  # DELETE /productclas/1.json
  def destroy
    @productcla.destroy
    respond_to do |format|
      format.html { redirect_to productclas_url, notice: 'Productcla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcla
      @productcla = Productcla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productcla_params
      params.require(:productcla).permit(:name)
    end
end
