class Questions::OptionsController < ApplicationController
  before_action :scope_by_question, :set_options

  def index
  end

  def new
    @option = @options.new
  end

  def create
    @options.create! options_params

    redirect_to question_options_path
  end

  def update
    @options.find(params[:id]).update! options_params

    redirect_to question_options_path
  end

  def destroy
    @options.find(params[:id]).destroy!

    redirect_to question_options_path
  end

  private
    def set_options
      @options = @question.options
    end

    # Extract that into a 'scope' concern
    def scope_by_question
      @question = Question.find(params[:question_id])
    end

    def options_params
      params.require(:option).permit(:name)
    end
end
