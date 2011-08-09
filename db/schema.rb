# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110809202411) do

  create_table "job_step_completeds", :force => true do |t|
    t.integer  "job_id"
    t.datetime "completedtime"
    t.string   "step"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_step_completeds", ["job_id"], :name => "index_job_step_completeds_on_job_id"

  create_table "jobs", :force => true do |t|
    t.string   "jobuuid"
    t.string   "jobtype"
    t.string   "directory"
    t.string   "sipuuid"
    t.string   "currentstep"
    t.boolean  "hidden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "taskuuid"
    t.integer  "job_id_id"
    t.string   "fileuuid"
    t.string   "filename"
    t.string   "exec_field"
    t.string   "arguments"
    t.datetime "starttime"
    t.string   "client"
    t.datetime "endtime"
    t.text     "stdout"
    t.text     "stderror"
    t.integer  "exitcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["job_id_id"], :name => "index_tasks_on_job_id_id"

end
