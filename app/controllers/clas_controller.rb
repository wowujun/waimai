class ClasController < ApplicationController
  before_action :set_cla, only: [:show, :edit, :update, :destroy]

  # GET /clas
  # GET /clas.json
  def index
    @clas = Cla.all
  end

  # GET /clas/1
  # GET /clas/1.json
  def show
  end

  # GET /clas/new
  def new
    @cla = Cla.new
  end

  # GET /clas/1/edit
  def edit
  end

  # POST /clas
  # POST /clas.json
  def create
    @cla = Cla.new(cla_params)

      if @cla.save
        redirect_to :action => 'index'
      else
        redirect_to :action => 'new'
      end

  end

  # PATCH/PUT /clas/1
  # PATCH/PUT /clas/1.json
  def update

      if @cla.update(cla_params)
        redirect_to :action => 'index'
      else
        redirect_to :action => 'edit'
      end

  end

  # DELETE /clas/1
  # DELETE /clas/1.json
  def destroy
    @cla.destroy
    respond_to do |format|
      format.html { redirect_to clas_url, notice: 'Cla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cla
      @cla = Cla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cla_params
      params.require(:cla).permit(:name)
    end
end
