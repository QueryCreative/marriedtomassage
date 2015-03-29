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
	    	# field :content, :wysihtml5 do
	    	# 	config_options toolbar: { fa: true }
	    	# end
	    	field :expires
	    	field :published_at do
	          strftime_format "%m-%d-%Y"
	        end
	    	field :external_link
	    end
	  end
end