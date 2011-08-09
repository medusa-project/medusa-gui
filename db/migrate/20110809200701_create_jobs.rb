class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobuuid
      t.string :jobtype
      t.string :directory
      t.string :sipuuid
      t.string :currentstep
      t.boolean :hidden

      t.timestamps
    end
  end
end
