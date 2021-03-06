class HardSkillsController < ApplicationController
  before_action :set_hard_skill, only: [:show, :edit, :update, :destroy]

  # GET /hard_skills
  # GET /hard_skills.json
  def index
    @user = User.find_by(id: params[:user_id])
  end

  # GET /hard_skills/1
  # GET /hard_skills/1.json
  def show
    @user = User.find_by(id: params[:user_id])
  end

  # GET /hard_skills/new
  def new
    @user = User.find_by(id: params[:user_id])
    @user.hard_skill = HardSkill.new
  end

  # GET /hard_skills/1/edit
  def edit
    @user = User.find_by(id: params[:user_id])
  end

  # POST /hard_skills
  # POST /hard_skills.json
  def create
    @user = User.find_by(id: params[:user_id])
    @user.create_hard_skill(hard_skill_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_path(@user), notice: 'Hard skill was successfully created.' }
      end
    end
  end

  # PATCH/PUT /hard_skills/1
  # PATCH/PUT /hard_skills/1.json
  def update
    respond_to do |format|
      @hard_skill = User.find_by(id: params[:user_id]).hard_skill

      if @hard_skill.update(hard_skill_params)
        format.html { redirect_to profile_path, notice: 'Hard skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @hard_skill }
      else
        format.html { render :edit }
        format.json { render json: @hard_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hard_skills/1
  # DELETE /hard_skills/1.json
  def destroy
    @hard_skill = User.find_by(id: params[:user_id]).hard_skill
    @hard_skill.destroy
    respond_to do |format|
      format.html { redirect_to hard_skills_url, notice: 'Hard skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hard_skill
      @hard_skill = HardSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hard_skill_params
      params.require(:hard_skill).permit(:linkedin, :social_media_profile, :website, :travelamount, :image)
    end
end
