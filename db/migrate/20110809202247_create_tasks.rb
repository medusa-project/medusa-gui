class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :taskuuid
      t.references :job
      t.string :fileuuid
      t.string :filename
      t.string :exec_field
      t.string :arguments
      t.datetime :starttime
      t.string :client
      t.datetime :endtime
      t.text :stdout
      t.text :stderror
      t.integer :exitcode

      t.timestamps
    end
    add_index :tasks, :job_id
  end
end
