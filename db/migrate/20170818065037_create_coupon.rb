class CreateCoupon < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :company_id
      t.timestamps
    end

    add_index :coupons, :company_id
    add_attachment :coupons, :image
  end
end
