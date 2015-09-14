class AddProjectImageToProjects < ActiveRecord::Migration
	def self.up
		add_attachment :projects, :project_image
	end

	def self.down
		remove_attachment :projects, :project_image
	end
end
