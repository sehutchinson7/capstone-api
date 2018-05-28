class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :location
      t.date :date
      t.string :robbery_type
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
