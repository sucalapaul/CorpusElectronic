class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.boolean :sex
      t.integer :age
      t.integer :job_id
      t.integer :location_id

      t.timestamps
    end
  end
end
