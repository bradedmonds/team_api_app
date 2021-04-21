class Api::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render "index.json.jb"
  end

  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id],
    )
    if @capstone.save
      render "show.json.jb"
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @capstone = Capstone.find_by(params[:student_id])
    render "show.json.jb"
  end

  def update
    @capstone = Capstone.find_by(params[:student_id])
    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || capstone.description
    @capstone.url = params[:url] || capstone.url
    @capstone.screenshot = params[:screenshot] || capstone.screenshot
    @capstone.student_id = params[:student_id] || capstone.student_id
    if @capstone.save
      render "show.json.jb"
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    capstone = Capstone.find(params[:id])
    capstone.destroy
    render json: { message: "Successfully Destroyed Capstone" }
  end
end
