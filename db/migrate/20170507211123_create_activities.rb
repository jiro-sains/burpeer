class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string  :type
      t.date    :date
      t.integer :amount
      t.text    :note
      t.timestamps
    end
  end
end
