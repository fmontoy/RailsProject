class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.float :definitiva

      t.timestamps
    end
  end
end
