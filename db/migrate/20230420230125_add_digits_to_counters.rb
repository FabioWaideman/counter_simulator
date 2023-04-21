class AddDigitsToCounters < ActiveRecord::Migration[7.0]
  def change
    add_column :counters, :digit_1, :integer, default: 1
    add_column :counters, :digit_2, :integer, default: 1
    add_column :counters, :digit_3, :integer, default: 1
    add_column :counters, :digit_4, :integer, default: 1
    add_column :counters, :digit_5, :integer, default: 1
  end
end
