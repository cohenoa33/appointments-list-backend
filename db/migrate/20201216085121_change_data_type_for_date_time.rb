class ChangeDataTypeForDateTime < ActiveRecord::Migration[6.0]
  def change
    change_table :appointments do |t|
      t.change :date, :string
      t.change :time, :string
    end
  end
end
