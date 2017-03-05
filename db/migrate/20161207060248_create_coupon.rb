class CreateCoupon < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.float :discount
      t.integer :discount_type
      t.attachment :coupon_photo
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
