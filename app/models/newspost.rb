class Newspost < ActiveRecord::Base
	belongs_to :user
	validates :content, presence: true
	has_paper_trail
end
