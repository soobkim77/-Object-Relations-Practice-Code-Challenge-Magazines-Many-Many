class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |s|
      s.belongs_to :magazine
      s.belongs_to :reader
      s.float :price
    end
  end
end
