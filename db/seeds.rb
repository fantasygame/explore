# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This code loads seeds from db/seeds in specified order
files = %w(monsters wealth)
files.each {|f| load File.join(Rails.root, 'db', 'seeds', "#{f.to_s}.rb").to_s}
