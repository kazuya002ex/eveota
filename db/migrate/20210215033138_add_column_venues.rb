class AddColumnVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :access_info, :string
  end
end
