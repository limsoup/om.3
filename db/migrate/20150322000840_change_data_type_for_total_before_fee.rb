class ChangeDataTypeForTotalBeforeFee < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.change :total_before_fee, :decimal, :precision => 5, :scale => 2
    end
  end
  
  def self.down
    change_table :orders do |t|
      t.change :total_before_fee, :integer
    end
  end

end
