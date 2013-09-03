class CreateLogFilteredLines < ActiveRecord::Migration
  def change
    create_table :log_filtered_lines do |t|

      t.timestamps
    end
  end
end
