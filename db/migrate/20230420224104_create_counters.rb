class CreateCounters < ActiveRecord::Migration[7.0]
  def change
    create_table :counters do |t|
      t.string 'field1', array: true
      t.string 'field2', array: true
      t.string 'field3', array: true
      t.string 'field4', array: true
      t.string 'field5', array: true
      t.timestamps
    end
  end
end
