class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.date :joining_date
      t.string :job_title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
