class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :grade
      t.references :user, foreign_key: true
      t.references :course_offering, foreign_key: true

      t.timestamps
    end
  end
end
