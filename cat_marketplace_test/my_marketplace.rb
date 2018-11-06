require 'active_record'
require 'sqlite3'
require 'pry'
require 'table_print'

# connect to database in separate file
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './catmarket.db'
)

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

# initialize table using marketplace_table_define.rb - rerunning will recreate table and rewrite data
# add data from command line or data_add_test.rb
# use binding.pry to access data

puts 'Users below:'
tp User.all
puts 'Cat Records below:'
User.find_each do |user|
  puts "#{user.username} has the following cats listed:"
  tp user.cats
end

binding.pry
