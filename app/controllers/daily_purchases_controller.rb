class DailyPurchasesController < ApplicationController
  before_action :set_daily_purchase, only: [:show, :edit, :update, :destroy]

  # GET /daily_purchases
  # GET /daily_purchases.json
  def index
    @daily_purchases = DailyPurchase.all
  end

  # GET /daily_purchases/1
  # GET /daily_purchases/1.json
  def show
  end

  # GET /daily_purchases/new
  def new
    @daily_purchase = DailyPurchase.new
  end

  # GET /daily_purchases/1/edit
  def edit
  end

  # POST /daily_purchases
  # POST /daily_purchases.json
  def create
    @daily_purchase = DailyPurchase.new(daily_purchase_params)

    respond_to do |format|
      if @daily_purchase.save
        format.html { redirect_to @daily_purchase, notice: 'Daily purchase was successfully created.' }
        format.json { render :show, status: :created, location: @daily_purchase }
      else
        format.html { render :new }
        format.json { render json: @daily_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_purchases/1
  # PATCH/PUT /daily_purchases/1.json
  def update
    respond_to do |format|
      if @daily_purchase.update(daily_purchase_params)
        format.html { redirect_to @daily_purchase, notice: 'Daily purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_purchase }
      else
        format.html { render :edit }
        format.json { render json: @daily_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_purchases/1
  # DELETE /daily_purchases/1.json
  def destroy
    @daily_purchase.destroy
    respond_to do |format|
      format.html { redirect_to daily_purchases_url, notice: 'Daily purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_purchase
      @daily_purchase = DailyPurchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_purchase_params
      params.require(:daily_purchase).permit(:listing_id, :day)
    end
end
