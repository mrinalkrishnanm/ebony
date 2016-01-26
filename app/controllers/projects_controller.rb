class ProjectsController < ApplicationController
 
	def index
		@projects = Project.all
		render json: @projects, status: 200
	end
	
	def show
	
	end
	
	def create
	
	end

	def update

	end
	
	def destroy

	end	
end
