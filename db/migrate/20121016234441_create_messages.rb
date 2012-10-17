class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :text
      t.date :date
      t.text :details
      t.integer :text_type_id
      t.integer :category_id
      t.integer :sender_id
      t.integer :relationship_id

      t.timestamps
    end
  end
end
