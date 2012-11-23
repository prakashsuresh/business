class AddEmployeeTypeToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :employee_type, :string
  end
end
