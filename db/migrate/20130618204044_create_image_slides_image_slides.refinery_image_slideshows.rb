# This migration comes from refinery_image_slideshows (originally 2)
class CreateImageSlidesImageSlides < ActiveRecord::Migration

  def up
    create_table :refinery_image_slides do |t|
      t.string :title
      t.integer :position
      t.integer :image_slideshow_id

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-image_slides"})
    end

    drop_table :refinery_image_slides

  end

end
