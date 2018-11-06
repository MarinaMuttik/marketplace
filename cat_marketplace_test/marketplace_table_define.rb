require './my_marketplace.rb'

# tables and columns
ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :username
    t.datetime :created_at, null: false
  end
  create_table :cats, force: true do |t|
    t.string :catname
    t.text :description
    t.references :user
#find a way to include name of user?
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false
  end
end
