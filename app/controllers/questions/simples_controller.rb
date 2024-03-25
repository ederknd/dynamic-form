class Questions::SimplesController < QuestionsController
  def update
    @question.update! question_params

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @question.destroy!

    redirect_to questions_path
  end

  private
    def question_params
      params.require(:questions_simple).permit(:label)
    end
end
