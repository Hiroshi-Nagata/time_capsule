class ContentsController < ApplicationController
  before_action :logged_in_user
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /contents
  # GET /contents.json
  def index
    if !current_user.admin.admin?
      @contents = Content.where(user_id: current_user.id)
    else
      @contents = Content.all
    end
  @contents = Content.paginate(page: params[:page]).order(id: "desc")
  end

  def upload
    @upload_file = UploadFile.new( params.require(:upload_file).permit(:name, :file) )
    @upload_file.save
    redirect_to action: 'index'
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
  end

  # GET /contents/new
  def new
    @content = Content.new(content_params)
    @content.static_file = StaticFile.find_by(id: content_params[:static_file_id])
    @content.user = current_user
  end

  # GET /contents/1/edit
  def edit
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html {
          @content.static_file = StaticFile.find_by(id: @content.static_file_id)
          render :new
        }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.where(user_id: current_user.id).find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:user_id, :title, :format, :static_file_id, :text, :address, :sender, :send_at, :post_at, :received_at, :shared,  :address_id)
    end
end
