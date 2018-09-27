class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer, default: 0, null: false

    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    User.find_each { |u| User.reset_counters(u.id, :rents) }
  end
end
