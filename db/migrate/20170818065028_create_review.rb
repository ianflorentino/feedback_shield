class CreateReview < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.float :rating
      t.integer :company_id
      t.timestamps
    end

    add_index :reviews, :company_id
  end
end
