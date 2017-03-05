class CreateCompany < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :domain
      t.string :redirect_url
      t.string :locale
      t.integer :default_review
      t.integer :review_threshold
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
