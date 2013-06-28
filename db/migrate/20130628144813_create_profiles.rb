class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.date :dob
      t.integer :age
      t.boolean :criminal
      t.boolean :sex_offender

      t.timestamps
    end
  end
end
