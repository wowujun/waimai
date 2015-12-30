class ProductProductclaRefsController < ApplicationController
  before_action :set_product_productcla_ref, only: [:show, :edit, :update, :destroy]

  # GET /product_productcla_refs
  # GET /product_productcla_refs.json
  def index
    @product_productcla_refs = ProductProductclaRef.all
  end

  # GET /product_productcla_refs/1
  # GET /product_productcla_refs/1.json
  def show
  end

  # GET /product_productcla_refs/new
  def new
    @product_productcla_ref = ProductProductclaRef.new
  end

  # GET /product_productcla_refs/1/edit
  def edit
  end

  # POST /product_productcla_refs
  # POST /product_productcla_refs.json
  def create
    @product_productcla_ref = ProductProductclaRef.new(product_productcla_ref_params)

    respond_to do |format|
      if @product_productcla_ref.save
        format.html { redirect_to @product_productcla_ref, notice: 'Product productcla ref was successfully created.' }
        format.json { render :show, status: :created, location: @product_productcla_ref }
      else
        format.html { render :new }
        format.json { render json: @product_productcla_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_productcla_refs/1
  # PATCH/PUT /product_productcla_refs/1.json
  def update
    respond_to do |format|
      if @product_productcla_ref.update(product_productcla_ref_params)
        format.html { redirect_to @product_productcla_ref, notice: 'Product productcla ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_productcla_ref }
      else
        format.html { render :edit }
        format.json { render json: @product_productcla_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_productcla_refs/1
  # DELETE /product_productcla_refs/1.json
  def destroy
    @product_productcla_ref.destroy
    respond_to do |format|
      format.html { redirect_to product_productcla_refs_url, notice: 'Product productcla ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_productcla_ref
      @product_productcla_ref = ProductProductclaRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_productcla_ref_params
      params.require(:product_productcla_ref).permit(:productcla_id, :product_id)
    end
end
