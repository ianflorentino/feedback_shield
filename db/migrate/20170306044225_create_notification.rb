class CreateNotification < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :company_id
      t.string :notification_email
      t.text :positive_notification
      t.text :negative_notification
      t.timestamps
    end
  end
end
