# This migration comes from refinery_image_slideshows (originally 3)
class AddImageAndCaptionToImageSlides < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :image, :image
    add_column :refinery_image_slides, :caption, :string
  end
end