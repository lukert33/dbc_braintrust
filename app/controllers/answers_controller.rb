class AnswersController < ApplicationController

  def index
    @answers = Answer.where(question_id: params[:question] )
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:format])
  end

  def create
    @answer = Answer.create(post_params)
    if @answer.language.downcase == "ruby"
      File.open('hey.rb', 'w') {|f| f.write(@answer.code)}
      @result_from_terminal = `ruby hey.rb`
    else
      File.open('hey.js', 'w') {|f| f.write(@answer.code)}
      @result_from_terminal = `node hey.js`
      p "**************"
      p @result_from_terminal
    end
    @question = Question.find(@answer.question_id)
    @user = @current_user
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
    params.require(:answer).permit(:code, :prose, :question_id, :user_id, :language)
  end
end


# public Class StackWithMin extends Stack < NodeWithMin> {
# int newMin = Math.min(value, min());
# super.push(newNodeWithMin(value, newMin));
# }

# public int min() {
#   if (this.isEmpty()) {
#     return Integer.MAX_VALUE. }
# else {
# return peek().min;
# }
# }
# }
# class NodeWithMin {
# public int value;
# public int min;
# public NodeWithMin {
# public int value;
# public NodeWithMin(int v, int min){
# value = v;
# this.min = min;
# }
# }
