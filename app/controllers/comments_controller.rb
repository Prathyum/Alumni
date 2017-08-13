class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_student!
  


  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
<<<<<<< HEAD
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    @comment.student_id = current_student.id if current_student
 
=======
   @comment = Comment.new(comment_params)
    @comment.student_id= current_student.id
    @comment.question_id= @question.id
    @comment.cemail = current_student.email
    
>>>>>>> 0210e3d837651b4c4aef17e1704d1946a29e2ff3

    # @comment.student_id= current_student.id
    # @comment.question_id= @question.id
    

    respond_to do |format|
      if @comment.save
        
        format.html { redirect_to @question, notice: '' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @question, notice: '' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: '' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_comment
      @comment = Comment.find(params[:id])
    end
  #   def set_question
  # @question = Question.find(params[:question_id])
  #  end


    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body,:question_id,:student_id)
    end
end
