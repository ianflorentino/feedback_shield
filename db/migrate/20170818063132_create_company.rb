class CreateCompany < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :domain
      t.boolean :is_active, default: true
      t.string :locale, default: :en
      t.string :title
      t.text :subtitle
      t.text :message_to_customer
      t.text :positive_feedback_message
      t.text :negative_feedback_message
      t.string :redirect_url
      t.integer :default_review
      t.float :review_threshold, default: 3
      t.integer :user_id
      t.datetime :deleted_at
      t.timestamps
    end

    add_index :companies, :user_id
    add_attachment :companies, :logo
    add_attachment :companies, :storefront_photo
  end
end
