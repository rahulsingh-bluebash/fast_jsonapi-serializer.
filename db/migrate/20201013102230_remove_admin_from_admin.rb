class RemoveAdminFromAdmin < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :admin, :string
  end
end
