class Questions::CollectionsController < QuestionsController
  before_action :set_question, only: %i[ update ]

  def update
    @question.update! question_params

    respond_to do |format|
      format.turbo_stream
    end
  end

  private
    def set_question
      @question = Questions::Collection.find(params[:id])
    end

    def question_params
      params.require(:questions_collection).permit(:label)
    end
end
