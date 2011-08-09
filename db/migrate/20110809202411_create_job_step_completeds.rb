class CreateJobStepCompleteds < ActiveRecord::Migration
  def change
    create_table :job_step_completeds do |t|
      t.references :job
      t.datetime :completedtime
      t.string :step

      t.timestamps
    end
    add_index :job_step_completeds, :job_id
  end
end
