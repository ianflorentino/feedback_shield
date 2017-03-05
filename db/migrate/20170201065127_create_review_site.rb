class CreateReviewSite < ActiveRecord::Migration[5.0]
  def change
    create_table :review_sites do |t|
      t.integer :company_id
      t.integer :review_company_id
      t.string :url
      
      t.timestamps
    end
  end
end
