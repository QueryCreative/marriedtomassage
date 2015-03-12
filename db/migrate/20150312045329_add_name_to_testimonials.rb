class AddNameToTestimonials < ActiveRecord::Migration
  def change
  	add_column :testimonials, :name, :string
  end
end