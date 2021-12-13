class BlogCommentsController < ApplicationController
  before_action :set_blog_comment, only: %i[ show edit update destroy ]

  # GET /blog_comments or /blog_comments.json
  def index
    @blog_comments = BlogComment.all
  end

  # GET /blog_comments/1 or /blog_comments/1.json
  def show
  end

  # GET /blog_comments/new
  def new
    @blog_comment = BlogComment.new
  end

  # GET /blog_comments/1/edit
  def edit
  end

  # POST /blog_comments or /blog_comments.json
  def create
    @blog_comment = BlogComment.new(blog_comment_params)
    @blog_comment.user_id = current_user.id
    respond_to do |format|
      if @blog_comment.save
        url = "/blogs/" + @blog_comment.blog_id.to_s
        format.html { redirect_to url, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @blog_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_comments/1 or /blog_comments/1.json
  def update
    respond_to do |format|
      if @blog_comment.update(blog_comment_params)
        format.html { redirect_to @blog_comment, notice: "Blog comment was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_comments/1 or /blog_comments/1.json
  def destroy
    @blog_comment.destroy
    respond_to do |format|
      format.html { redirect_to blog_comments_url, notice: "Blog comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_comment
      @blog_comment = BlogComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_comment_params
      params.require(:blog_comment).permit(:user_id, :blog_id, :comment)
    end
end
