class AddTitlePublishedAtAndExternalLinkFieldsToNewsPostsandBlogPosts < ActiveRecord::Migration
  def change
  	add_column :newsposts, :title, :string
  	add_column :newsposts, :external_link, :string
  	add_column :newsposts, :published_at, :datetime

  	add_column :blogposts, :title, :string
  	add_column :blogposts, :external_link, :string
  	add_column :blogposts, :published_at, :datetime
  end
end
