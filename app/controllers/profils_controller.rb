class ProfilsController < ApplicationController
  before_action :set_profil, only: [:show, :edit, :update, :destroy]

  # GET /profils
  # GET /profils.json
  def index
    @profils = Profil.all
  end

  # GET /profils/1
  # GET /profils/1.json
  def show
     @myposts = current_user.posts
  end

  # GET /profils/new
  
  def new
    @profil = Profil.new
  if current_user.profil.blank?
    # create profil for user
  else
    # raise error which doesn't make sense or redirect like
    redirect_to profil_url(current_user)
  end
end

  # GET /profils/1/edit
  def edit
  end

  # POST /profils
  # POST /profils.json
  def create
    @profil = Profil.new(profil_params)
    @profil.user_id = current_user.id
    respond_to do |format|
      if @profil.save
        format.html { redirect_to @profil, notice: 'Profil was successfully created.' }
        format.json { render :show, status: :created, location: @profil }
      else
        format.html { render :new }
        format.json { render json: @profil.errors, status: :unprocessable_entity }
      
      end
    end
  end

  # PATCH/PUT /profils/1
  # PATCH/PUT /profils/1.json
  def update
    respond_to do |format|
      if @profil.update(profil_params)
        format.html { redirect_to @profil, notice: 'Profil was successfully updated.' }
        format.json { render :show, status: :ok, location: @profil }
      else
        format.html { render :edit }
        format.json { render json: @profil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profils/1
  # DELETE /profils/1.json
  def destroy
    @profil.destroy
    respond_to do |format|
      format.html { redirect_to profils_url, notice: 'Profil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profil
      @profil = Profil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profil_params
      params.require(:profil).permit(:first_name, :last_name, :bio, :city_of_origin, :current_location, :asylum_status, :email, :facebook, :twitter, :linkedin, :instagram, :dob, :gender, :image)
    end
end
