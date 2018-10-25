require "active_record"
require "sqlite3"
require "pry"
require "table_print"

# database in RAM to test
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

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

# model classes

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class User < ApplicationRecord
  has_many :cats
end

class Cat < ApplicationRecord
  belongs_to :user
end

# move to separate file pets.rb

#require './my_marketplace.rb'

mazzyb = User.create(username: "MazzyB")
mazzyb.cats.create(catname: "Tizzy", description: "Can be grouchy without sleep but the most adorable stalker there is.")
mazzyb.cats.create(catname: "Tigga", description: "Squeaky and adorable.")
joey = User.create(username: "JoeyTK")
joey.cats.create(catname: "Tussi", description: "Dribble and kneading central!")
tp User.first.cats

binding.pry
