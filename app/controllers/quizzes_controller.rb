class QuizzesController < ApplicationController
  skip_before_action :authorized

# TEsting
def index
  @quizzes = Quiz.all
  # render json: @quizzes
   render json:  QuizSerializer.new(@quizzes)
end

def show
  @quiz = Quiz.find (params[:id])
  render json:  QuizSerializer.new(@quiz)
end
# end test

  def create



  end


end
