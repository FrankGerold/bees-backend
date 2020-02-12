class QuizzesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :update] #Skipping auth for testing methods

  # TEsting
  def index
    @quizzes = Quiz.all
    # render json: @quizzes

      @options = {include: [:questions, :answers]}
     render json:  QuizSerializer.new(@quizzes, @options)
  end


  @options = {include: [:questions]}

  def show
    @quiz = Quiz.find (params[:id])
    @options = {include: [:questions]}

    render json:  QuizSerializer.new(@quiz, @options)
  end
  # end test

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user = current_user
    @quiz.save

    generate_questions(@quiz)

    @options = {include: [:questions]}

    render json: QuizSerializer.new(@quiz, @options)
  end

  def user
    @user = current_user
    @quizzes = @user.quizzes

    render json: QuizSerializer.new(@quizzes)
  end

  def update
    @quiz = Quiz.find (params[:id])

    @quiz.update({
      name: params[:name],
      score: params[:score]
      })

      @options = {include: [:questions]}

      render json: QuizSerializer.new(@quiz, @options)

  end

  private

# Take 10 random questions from the DB list of questions, and save them to the current quiz
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
