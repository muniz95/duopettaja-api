class QuestionOptionsController < ApplicationController
  before_action :set_question_option, only: [:show, :update, :destroy]

  # GET /question_options
  def index
    @question_options = QuestionOption.all

    render json: @question_options
  end

  # GET /question_options/1
  def show
    render json: @question_option
  end

  # POST /question_options
  def create
    @question_option = QuestionOption.new(question_option_params)

    if @question_option.save
      render json: @question_option, status: :created, location: @question_option
    else
      render json: @question_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_options/1
  def update
    if @question_option.update(question_option_params)
      render json: @question_option
    else
      render json: @question_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_options/1
  def destroy
    @question_option.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_option
      @question_option = QuestionOption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_option_params
      params.require(:question_option).permit(:text, :correct, :order, :question_id)
    end
end
