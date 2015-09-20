class Comment < ActiveRecord::Base

	belongs_to :chu
	belongs_to :user
end
