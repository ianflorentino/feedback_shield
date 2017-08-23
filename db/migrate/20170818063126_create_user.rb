class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.boolean :is_admin, default: false
      t.datetime :deleted_at
    end
  end
end
