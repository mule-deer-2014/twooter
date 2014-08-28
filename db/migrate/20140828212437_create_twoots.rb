class CreateTwoots < ActiveRecord::Migration
  def change
    create_table :twoots do |t|
      t.string :body

      t.timestamps
    end
  end
end
