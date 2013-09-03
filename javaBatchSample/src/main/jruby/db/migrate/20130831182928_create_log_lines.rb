class CreateLogLines < ActiveRecord::Migration
  def change
    create_table :log_lines do |t|

      t.timestamps
    end
  end
end
