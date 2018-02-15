class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :update, :destroy, :questions, :complete]

  # GET /lessons
  def index
    @lessons = Lesson.all

    render json: @lessons
  end

  # GET /lessons/1
  def show
    render json: @lesson
  end

  # POST /lessons
  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      render json: @lesson, status: :created, location: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lessons/1
  def update
    if @lesson.update(lesson_params)
      render json: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessons/1
  def destroy
    @lesson.destroy
  end

  def questions
    @questions = @lesson.questions
    render json: @questions, :include => :options
  end
  
  def complete
    @lesson.completed = true
    @lesson.save!
    render json: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lesson_params
      params.require(:lesson).permit(:completed, :words, :skill_id)
    end
end
