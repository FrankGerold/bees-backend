class QuizzesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :update] #Skipping auth for testing methods

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
    @quiz = Quiz.new(quiz_params)
    @quiz.user = current_user
    @quiz.save

    generate_questions(@quiz)

    render json: QuizSerializer.new(@quiz)
  end

  def user
    @user = current_user
    @quizzes = @user.quizzes

    render json: QuizSerializer.new(@quizzes)
  end

  def update

  private

  def generate_questions(quiz)

    randomQuestions = Question.order('RANDOM()').take(10)

    for question in randomQuestions do
      QuestionsQuiz.create(quiz: quiz, question: question)
    end

  end

  def quiz_params
    params.permit(:topic, :name, :score)
  end

end
