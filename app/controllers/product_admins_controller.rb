class ProductAdminsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!
  before_action :admin_only


  # GET /product_admins or /product_admins.json
  def index
    @product_admins = Product.all
  end

  # GET /product_admins/1 or /product_admins/1.json
  def show
  end

  # GET /product_admins/new
  def new
    @product_admin = Product.new
  end

  # GET /product_admins/1/edit
  def edit
  end

  # POST /product_admins or /product_admins.json
  def create
    @product_admin = Product.new(product_params)

    respond_to do |format|
      if @product_admin.save
        format.html { redirect_to @product_admin, notice: "Product admin was successfully created." }
        format.json { render :show, status: :created, location: @product_admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_admins/1 or /product_admins/1.json
  def update
    respond_to do |format|
      if @product_admin.update(product_params)
        format.html { redirect_to @product_admin, notice: "Product admin was successfully updated." }
        format.json { render :show, status: :ok, location: @product_admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_admins/1 or /product_admins/1.json
  def destroy
    @product_admin.destroy
    respond_to do |format|
      format.html { redirect_to product_admins_url, notice: "Product admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product_admin = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.fetch(:product, {}).permit(:name, :description, :price, :sale_price, :quantity, :image, images:[])
    end
end
