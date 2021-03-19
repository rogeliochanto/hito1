class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :tweet

      t.timestamps
    end
  end
end
