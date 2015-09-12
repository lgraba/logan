class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	acts_as_taggable
end
