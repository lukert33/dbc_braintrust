class VotesController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.create(user_id: current_user)
    render partial: "index", locals: {answer: answer}
  end

  def destroy
    @answer = Answer.find(params[:answer_id])
    vote = @answer.votes.find{|v| v.user_id == session[:user_id] }
    vote.destroy
    render partial: "index", locals: {answer: answer}
  end

  def index
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.where(user_id: session[:user_id])
    render partial: "index", locals: {answer: answer}
  end

end
