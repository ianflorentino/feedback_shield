class CreateReviewSite < ActiveRecord::Migration[5.0]
  def change
    create_table :review_sites do |t|
      t.string :name
      t.string :redirect_url
      t.attachment :logo
      t.integer :company_id
      t.timestamps
    end

    add_index :review_sites, :company_id
  end
end
