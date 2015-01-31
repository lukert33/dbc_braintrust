class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(post_params)
  end

  def edit
  end

  def destroy
  end

  def post_params
    params.require(:answer).permit(:user_id, :code, :prose)
  end
end
