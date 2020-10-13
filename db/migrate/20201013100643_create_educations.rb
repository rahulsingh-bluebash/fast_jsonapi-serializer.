class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
