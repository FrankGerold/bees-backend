class QuestionsController < ApplicationController
  skip_before_action :authorized

  # tests
  def index
    @questions = Question.all
    # render json: @questions
     render json:  QuestionSerializer.new(@questions)
  end

  def show
    @question = Question.find (params[:id])
    render json:  QuestionSerializer.new(@question)
  end
  # end tests

end
