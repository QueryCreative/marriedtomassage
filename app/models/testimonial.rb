class Testimonial < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :user
  paginates_per 4
  #has_paper_trail
  protected
	  rails_admin do
	    edit do
	    	field :content
	    	# field :content, :wysihtml5 do
	    	# 	config_options toolbar: { fa: true }
	    	# end
	    	field :name
	    	field :published_at
	    end
	  end
end