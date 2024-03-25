class AnswersController < ApplicationController
  def index
  end

  def create
    @answer = Answer.create entryable: Input::Text.new(content: params[:content]), question_id: params[:question]
  end
end
