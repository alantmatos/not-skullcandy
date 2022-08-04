class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :handle_baddata

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    review = Review.create!(review_params)
    render json: review, status: :created
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private

    def handle_baddata(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
    
    def render_not_found
        render json: { error: "NOT FOUND"}, status: :not_found
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.permit(:comment, :rating, :user_id, :product_id)
    end
end
