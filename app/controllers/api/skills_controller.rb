class Api::SkillsController < ApplicationController
  
  def index
    @skills = Skill.all
    render "index.json.jb"
  end
  
  def create
    @skill = Skill.new(
    skill_name_1: params[:skill_name_1],
    skill_name_2: params[:skill_name_2],
    skill_name_3: params[:skill_name_3],
    skill_name_4: params[:skill_name_4]
    )
    @skill.save
    render "show.json.jb"
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.skill_name_1 = params[:skill_name_1] || @skill.skill_name_1
    @skill.skill_name_2 = params[:skill_name_2] || @skill.skill_name_2
    @skill.skill_name_3 = params[:skill_name_3] || @skill.skill_name_3
    @skill.skill_name_4 = params[:skill_name_4] || @skill.skill_name_4
    @skill.save
    render "show.json.jb"
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: {message: "Skill has been terminated."}
  end

end
