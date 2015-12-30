class SidesController < ApplicationController
  layout 'stage'

  def index
    @advertisements = Advertisement.all

    @cla =Cla.all
    @indent = Indent.new
    @sidecla = @cla.find_by_id("1")
    @sellers = @sidecla.sellers
  end

  def show
    @advertisements = Advertisement.all
    @seller = Seller.find(params[:id])
    @product =Product.all
    @productcla = Productcla.all
    @had_product_ids = @seller.products.map(&:id)
    @products = @seller.products
    @productcla1=Array.new
    @products.each do |f|
        @productcla1<<f.productcla_id
    end
    @productcla1=@productcla1.uniq
    @claname = Array.new
      @productcla1.each do |d|
      @claname<< @productcla.find_by_id(d)
    end
    @claname =  @claname.uniq




  end
  def indent

  end

  def destroy_indent
    @seller = Seller.find(params[:id])
    if params[:product_ids] && params[:customers_id]
        @customer = Customer.find(params[:customers_id])
        @indents =@customer.indents
        @indents.each do |f|
          if f.status== 0
            params[:product_ids].each do |t|
            Indent_detail.create(indent_id:f.id,product_id:t)
            end
          else
            @indent=Indent.create(customer_id:params[:customers_id],status:0,orderstatus:0)
            params[:product_ids].each do |t|
            Indent_detail.create(indent_id: @indent.id,product_id:t)
            end
          end
        end
      end
  end
  def new

  end
end
