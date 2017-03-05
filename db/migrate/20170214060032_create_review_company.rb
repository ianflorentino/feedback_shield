class CreateReviewCompany < ActiveRecord::Migration[5.0]
  def change
    create_table :review_companies do |t|
      t.string :name
      t.string :example
      t.timestamps
    end
  end
end
