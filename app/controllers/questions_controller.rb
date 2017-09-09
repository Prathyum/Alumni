class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_student!,except: [:index, :show]
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.order(:voter_id)
    @questions = Question.order(:id).page params[:page]

   
   @questions = Question.where("tile LIKE ?","%#{params[:search]}%")
    end

  # GET /questions/1
  # GET /questions/1.json
  def show
     impressionist(@question)
  end

  # GET /questions/new
  def new
    @question = current_student.questions.build
  end

  # GET /questions/1/edit
  def edit
  end

  # question /questions
  # question /questions.json
  def create
    @question = current_student.questions.build(question_params)
    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_path, notice: 'your Question is Sent waiting for college response :)' }
        # format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: '' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: '' }
      format.json { head :no_content }
    end
  end
    def upvote
    @question=Question.find(params[:id])
    @question.upvote_by current_student
    redirect_to questions_path
  end

  def downvote
    @question=Question.find(params[:id])
    @question.downvote_by current_student
    redirect_to questions_path
  end

#   def previous_question
#   self.class.first(:conditions => ["tile < ", tile], :order => "tile desc")
# end

# def next_question
#   self.class.first(:conditions => ["tile > ?", tile], :order => "tile asc")
# end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:tile, :body,:term)
    end
end
