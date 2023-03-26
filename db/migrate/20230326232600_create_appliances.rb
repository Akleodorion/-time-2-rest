class CreateAppliances < ActiveRecord::Migration[7.0]
  def change
    create_table :appliances do |t|
      t.boolean :status
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
