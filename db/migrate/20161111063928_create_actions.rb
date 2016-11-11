class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :event_title
      t.string :venue
      t.string :date
      t.string :time
      t.string :description
      t.string :invitees
      t.string :status

      t.timestamps null: false
    end
  end
end
