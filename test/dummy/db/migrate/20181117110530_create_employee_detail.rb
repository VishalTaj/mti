class CreateEmployeeDetail < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_details do |t|
      t.references :profile, index: true
      t.string :emp_id
    end
  end
end
