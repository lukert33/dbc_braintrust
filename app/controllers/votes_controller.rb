class VotesController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.create(user_id: session[:user_id])
    question = @answer.question
    redirect_to answers_path(:question => question.id)
  end

  def destroy
    @answer = Answer.find(params[:answer_id])
    vote = @answer.votes.find_by(user_id: session[:user_id])
    vote.destroy
    question = @answer.question
    redirect_to answers_path(:question => question.id)
  end

  def index
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.find_by(user_id: session[:user_id])
    render partial: "index", locals: {answer: @answer}
  end

end
