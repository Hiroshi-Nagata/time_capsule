class StaticFilesController < ApplicationController
  before_action :logged_in_user
  before_action :set_static_file, only: [ :show, :edit, :update, :destroy]

  # GET /static_files
  # GET /static_files.json
  
  def index
    @static_file = StaticFile.new
    @static_files = StaticFile.paginate(page: params[:page]).order(id: "desc")
    # @static_files = StaticFile.all
  end

  # GET /static_files/1
  # GET /static_files/1.json
  def show
  end

  # GET /static_files/new
  def new
    @static_file = StaticFile.new
  end

  # GET /static_files/1/edit
  def edit
  end

  # POST /static_files
  # POST /static_files.json
  def create
    @static_file = StaticFile.new(static_file_params)
    if @static_file.mime_type.blank?
      @static_file.mime_type = params[:static_file][:content_file].content_type
    end
    create_content = params['create_content'].to_i

    respond_to do |format|
      if @static_file.save
        format.html {
          if create_content != 1
            redirect_to @static_file, notice: 'Static file was successfully created.'
          else
            redirect_to new_content_url({ content: { static_file_id: @static_file.id }})
          end
        }
        # format.json { render :show, status: :created, location: @static_file }
        format.json { render json: {message: 'success', itemId: @static_file.id}, status: 200 }
      else
        format.html { render :new }
        format.json { render json: @static_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_files/1
  # PATCH/PUT /static_files/1.json
  def update
    respond_to do |format|
      if @static_file.update(static_file_params)
        format.html { redirect_to @static_file, notice: 'Static file was successfully updated.' }
        format.json { render :show, status: :ok, location: @static_file }
      else
        format.html { render :edit }
        format.json { render json: @static_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_files/1
  # DELETE /static_files/1.json
  def destroy
    @static_file.destroy
    respond_to do |format|
      format.html { redirect_to static_files_url, notice: 'Static file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_file
      @static_file = StaticFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_file_params
      params.require(:static_file).permit(:mime_type, :content_file )
    end
end
