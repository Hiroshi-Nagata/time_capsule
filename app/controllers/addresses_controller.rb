class AddressesController < ApplicationController
  before_action :logged_in_user
  before_action :set_addresses, only: [:index]
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /addresses
  # GET /addresses.json
  def index
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
    render :layout => nil
  end

  # GET /addresses/new
  def new
    @address = Address.new(user_id: current_user.id)
    @user_id = User.find_by(params[:id])
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(address_params)
    respond_to do |format|
      if @address.save
        format.html { redirect_to :action => "index", notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to addresses_url, notice: '更新完了' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: '消去しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addresses
      @addresses = Address.all
      if current_user.admin.user?
        @addresses = @addresses.where(user_id: current_user.id)
      end
    end

    def set_address
      set_addresses
      @address = @addresses.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:user_id, :name, :email, :telephone)
    end
end
