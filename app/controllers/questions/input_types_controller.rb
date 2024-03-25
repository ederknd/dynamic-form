class Questions::InputTypesController < QuestionsController
  before_action :set_question_type, only: %i[ update ]

  def update
    @question.update! input_type: params[:input_type]

    redirect_to edit_question_path(@question)
  end

  def set_question_type
    @question = @question.becomes! params[:type].constantize
  end
end
