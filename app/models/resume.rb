class Resume < ActiveRecord::Base
	# Friendly project slugs
	extend FriendlyId
	friendly_id :title, use: :slugged

	# Paperclip: This method associates the attribute ":resume_file" with a file attachment
	has_attached_file :resume_file

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :resume_file, :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)
end