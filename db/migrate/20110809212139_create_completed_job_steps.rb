class CreateCompletedJobSteps < ActiveRecord::Migration
  def change
    create_table :completed_job_steps do |t|
      t.references :job
      t.datetime :completedtime
      t.string :step

      t.timestamps
    end
    add_index :completed_job_steps, :job_id
  end
end
