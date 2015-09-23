class AddResumeFileToResumes < ActiveRecord::Migration
	def self.up
		add_attachment :resumes, :resume_file
	end

	def self.down
		remove_attachment :resumes, :resume_file
	end
end

