class AddTitlePublishedAtAndExternalLinkFieldsToAnnouncementsandTestimonials < ActiveRecord::Migration
  def change
  	add_column :announcements, :title, :string
  	add_column :announcements, :external_link, :string
  	add_column :announcements, :published_at, :datetime

  	add_column :testimonials, :title, :string
  	add_column :testimonials, :external_link, :string
  	add_column :testimonials, :published_at, :datetime
  end
end