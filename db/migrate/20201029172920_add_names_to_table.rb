class AddNamesToTable < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.column :petName, :string
      t.column :petType, :string
      t.column :petColor, :string
    end

  end
end

