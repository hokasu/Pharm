class CreateIndicationableIndications < ActiveRecord::Migration
  def self.up
    create_table :indicationable_indications do |t|
      t.integer :indication_id
      t.integer :indicationable_id
      t.string :indicationable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :indicationable_indications
  end
end
