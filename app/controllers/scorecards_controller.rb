class ScorecardsController < ApplicationController
  before_action :set_scorecard, only: [:show, :update, :destroy]

  # GET /scorecards
  def index
    @scorecards = Scorecard.all

    render json: @scorecards
  end

  # GET /scorecards/1
  def show
    render json: @scorecard
  end

  # POST /scorecards
  def create
    @scorecard = Scorecard.new(scorecard_params)
    p @scorecard

    if @scorecard.save
      render json: @scorecard, status: :created, location: @scorecard
    else
      render json: @scorecard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scorecards/1
  def update
    if @scorecard.update(scorecard_params)
      render json: @scorecard
    else
      render json: @scorecard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scorecards/1
  def destroy
    @scorecard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorecard
      @scorecard = Scorecard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scorecard_params
      params.require(:scorecard).permit(:course_name, :date_played, :front_nine_score, :back_nine_score, :combined_score, :front_par, :back_par, :total_par, :user_id)
    end
end

