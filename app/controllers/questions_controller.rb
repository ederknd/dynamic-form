class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create! question_params

    redirect_to questions_path(active: @question.id)
  end

  def edit
  end

  def update
    @question.update! question_params

    redirect_to questions_path
  end

  def destroy
    @question.destroy!

    redirect_to questions_path
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:label, :input_type, :type)
    end
end
