class CreateLandingPage < ActiveRecord::Migration[5.0]
  def change
    create_table :landing_pages do |t|
      t.string :title
      t.string :subtitle
      t.string :background_color
      t.integer :company_id
      t.attachment :logo
      t.attachment :storefront_photo

      t.timestamps
    end
  end
end
