class AddDigitsToCounters < ActiveRecord::Migration[7.0]
  def change
    add_column :counters, :digit_1, :integer
    add_column :counters, :digit_2, :integer
    add_column :counters, :digit_3, :integer
    add_column :counters, :digit_4, :integer
    add_column :counters, :digit_5, :integer
  end
end
