class DiliverymenController < ApplicationController
  before_action :set_diliveryman, only: [:show, :edit, :update, :destroy]

  # GET /diliverymen
  # GET /diliverymen.json
  def index
    @diliverymen = Diliveryman.all
  end

  # GET /diliverymen/1
  # GET /diliverymen/1.json
  def show
  end

  # GET /diliverymen/new
  def new
    @diliveryman = Diliveryman.new
  end

  # GET /diliverymen/1/edit
  def edit
  end

  # POST /diliverymen
  # POST /diliverymen.json
  def create
    @diliveryman = Diliveryman.new(diliveryman_params)

    respond_to do |format|
      if @diliveryman.save
        format.html { redirect_to @diliveryman, notice: 'Diliveryman was successfully created.' }
        format.json { render :show, status: :created, location: @diliveryman }
      else
        format.html { render :new }
        format.json { render json: @diliveryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diliverymen/1
  # PATCH/PUT /diliverymen/1.json
  def update
    respond_to do |format|
      if @diliveryman.update(diliveryman_params)
        format.html { redirect_to @diliveryman, notice: 'Diliveryman was successfully updated.' }
        format.json { render :show, status: :ok, location: @diliveryman }
      else
        format.html { render :edit }
        format.json { render json: @diliveryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diliverymen/1
  # DELETE /diliverymen/1.json
  def destroy
    @diliveryman.destroy
    respond_to do |format|
      format.html { redirect_to diliverymen_url, notice: 'Diliveryman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diliveryman
      @diliveryman = Diliveryman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diliveryman_params
      params.require(:diliveryman).permit(:name, :weichat_id, :status)
    end
end
