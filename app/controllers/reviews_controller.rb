class ReviewsController < ApplicationController

  before_action only: [:show, :edit, :update, :destroy]

  before_action :load_restaurant

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = @restaurant.reviews.all

    @reviews = current_user.reviews.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
 #@review = @restaurant.reviews.where(id: params[:id]).to_a

  def show
     @review = @restaurant.reviews.find(params[:id])
  end


  # GET /reviews/new
  def new
    @review = current_user.reviews.new
  end

  # GET /reviews/1/edit
  def edit
    @review = @restaurant.reviews.find(params[:id])
    @review = current_user.reviews.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = @restaurant.reviews.new(review_params)
    p current_user
    respond_to do |format|
      if @review.save
        format.html { redirect_to [@restaurant, @review], notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = @restaurant.reviews.find(params[:id])
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to [@restaurant, @review], notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = @restaurant.reviews.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_reviews_path(@restaurant), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:body, :rating, :title, :restaurant_id, :user_id)
    end

    def load_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
