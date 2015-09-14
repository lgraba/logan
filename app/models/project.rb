class Project < ActiveRecord::Base
	# Friendly project slugs
	extend FriendlyId
	friendly_id :title, use: :slugged

	# Tags
	acts_as_taggable

	# Paperclip: This method associates the attribute ":project_image" with a file attachment
	has_attached_file :project_image, styles: {
		thumb: '100x100>',
		square: '200x200#',
		medium: '300x300>'
	}

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :project_image, :content_type => /\Aimage\/.*\Z/
end
