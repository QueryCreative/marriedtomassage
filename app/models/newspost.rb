class Newspost < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :player
  #has_paper_trail

  rails_admin do
    configure :user do
      label 'Author of this Post: '
    end
  end
end