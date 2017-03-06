class CreateMessage < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :company_id
      t.text :company_message
      t.text :positive_message
      t.text :negative_message

      t.timestamps
    end
  end
end
