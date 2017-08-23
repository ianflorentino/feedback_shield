class CreateNotification < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :additional_emails
      t.text :positive_email
      t.text :negative_email
      t.integer :company_id
      t.timestamps
    end

    add_index :notifications, :company_id
  end
end
