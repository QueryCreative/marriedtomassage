class Announcement < ActiveRecord::Base
  validates :content, presence: true
  validates :title, presence: true
  belongs_to :user
  paginates_per 4
  #has_paper_trail
  protected
	  rails_admin do
	    edit do
	    	field :title
	    	field :content
	    	field :expires
	    	field :published_at
	    	field :external_link
	    end
	  end
end