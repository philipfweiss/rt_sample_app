class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.references :guide, index: true, foreign_key: true
      t.integer :inner_guide_id
      t.string :description

      t.timestamps null: false
    end
  end
end
