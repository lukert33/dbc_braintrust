class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(post_params)
    render :show
  end

  def show
    @answer = Answer.find(post_params)
    @question = Question.find(@answer.question_id)
  end

  def edit
  end

  def destroy
  end

  def post_params
    params.require(:answer).permit(:code, :prose, :question_id)
  end
end
