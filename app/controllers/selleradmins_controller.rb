class SelleradminsController < ApplicationController
  before_action :set_selleradmin, only: [:show, :edit, :update, :destroy]

  # GET /selleradmins
  # GET /selleradmins.json
  def index
    @selleradmins = Selleradmin.all
  end

  # GET /selleradmins/1
  # GET /selleradmins/1.json
  def show
  end

  # GET /selleradmins/new
  def new
    @selleradmin = Selleradmin.new
  end

  # GET /selleradmins/1/edit
  def edit
  end

  # POST /selleradmins
  # POST /selleradmins.json
  def create
    @selleradmin = Selleradmin.new(selleradmin_params)

    respond_to do |format|
      if @selleradmin.save
        format.html { redirect_to @selleradmin, notice: 'Selleradmin was successfully created.' }
        format.json { render :show, status: :created, location: @selleradmin }
      else
        format.html { render :new }
        format.json { render json: @selleradmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selleradmins/1
  # PATCH/PUT /selleradmins/1.json
  def update
    respond_to do |format|
      if @selleradmin.update(selleradmin_params)
        format.html { redirect_to @selleradmin, notice: 'Selleradmin was successfully updated.' }
        format.json { render :show, status: :ok, location: @selleradmin }
      else
        format.html { render :edit }
        format.json { render json: @selleradmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selleradmins/1
  # DELETE /selleradmins/1.json
  def destroy
    @selleradmin.destroy
    respond_to do |format|
      format.html { redirect_to selleradmins_url, notice: 'Selleradmin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selleradmin
      @selleradmin = Selleradmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selleradmin_params
      params.require(:selleradmin).permit(:name, :loginname, :password_digest, :status)
    end
end
