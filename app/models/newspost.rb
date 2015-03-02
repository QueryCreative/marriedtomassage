class Newspost < ActiveRecord::Base
  validates :content, presence: true
  validates :title, presence: true
  belongs_to :user

  #has_paper_trail
  protected
	  rails_admin do
	    edit do
	    	field :title
	    	field :published_at
	    	field :content, :ck_editor
	    	field :external_link
	    end
	  end
end