class ResumesController < ApplicationController
	before_action :find_resume, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@resumes = Resume.all.order("created_at DESC")
	end

	def new
		@resume = Resume.new
	end

	def create
		@resume = Resume.new resume_params

		if @resume.save
			redirect_to @resume, notice: "You created a resume, Logan!"
		else
			render 'new', notice: "Oh nooooo! Couldn't create resume, Logan."
		end
	end

	def show
	end

	def edit
	end

	def update
		if @resume.update resume_params
			redirect_to @resume, notice: "Resume updated, baby."
		else
			render 'edit'
		end
	end

	def destroy
		@resume.destroy
		redirect_to resumes_path
	end

	private

	def resume_params
		params.require(:resume).permit(:title, :content, :slug, :resume_file)
	end

	def find_resume
		@resume = Resume.friendly.find(params[:id])
	end
end
