class IndentDetailsController < ApplicationController
  before_action :set_indent_detail, only: [:show, :edit, :update, :destroy]

  # GET /indent_details
  # GET /indent_details.json
  def index
    @indent_details = IndentDetail.all
  end

  # GET /indent_details/1
  # GET /indent_details/1.json
  def show
  end

  # GET /indent_details/new
  def new
    @indent_detail = IndentDetail.new
  end

  # GET /indent_details/1/edit
  def edit
  end

  # POST /indent_details
  # POST /indent_details.json
  def create
    @indent_detail = IndentDetail.new(indent_detail_params)

    respond_to do |format|
      if @indent_detail.save
        format.html { redirect_to @indent_detail, notice: 'Indent detail was successfully created.' }
        format.json { render :show, status: :created, location: @indent_detail }
      else
        format.html { render :new }
        format.json { render json: @indent_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indent_details/1
  # PATCH/PUT /indent_details/1.json
  def update
    respond_to do |format|
      if @indent_detail.update(indent_detail_params)
        format.html { redirect_to @indent_detail, notice: 'Indent detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @indent_detail }
      else
        format.html { render :edit }
        format.json { render json: @indent_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indent_details/1
  # DELETE /indent_details/1.json
  def destroy
    @indent_detail.destroy
    respond_to do |format|
      format.html { redirect_to indent_details_url, notice: 'Indent detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indent_detail
      @indent_detail = IndentDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indent_detail_params
      params.require(:indent_detail).permit(:indent_id, :product_id, :name, :num, :price)
    end
end
