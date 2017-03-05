class CreateReview < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :email
      t.string :phone
      t.string :employee_name
      t.float :stars
      t.text :comment

      t.timestamps
    end
  end
end
