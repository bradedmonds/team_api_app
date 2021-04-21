class Api::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render "index.json.jb"
  end

  def create
    @capstone = capstone.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: params[:student_id],
    )

    if @capstone.save
      render "show.json.jb"
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @capstone = Capstone.find(params[:id])
    render "show.json.jb"
  end

  def update
    @capstone = Capstone.find(params[:id])

    @capstone.start_date = params[:start_date] || capstone.start_date,
                           @capstone.end_date = params[:end_date] || capstone.end_date,
                           @capstone.job_title = params[:job_title] || capstone.job_title,
                           @capstone.company_name = params[:company_name] || capstone.company_name,
                           @capstone.details = params[:details] || capstone.details,
                           @capstone.student_id = params[:student_id] || capstone.student_id,
    if @capstone.save
      render "show.json.jb"
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    capstone = capstone.find(params[:id])
    capstone.destroy
    render json: { message: "Successfully Destroyed Experience" }
  end
end
