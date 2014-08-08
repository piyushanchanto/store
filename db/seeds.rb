# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#=========== Load Default Data =============
	
  # - IMPORTANT: SEED DATA ONLY
	sql = File.read("db/seeds/data.sql")
	statements = sql.split(/;$/)
	statements.pop  # the last empty statement

	ActiveRecord::Base.transaction do
 		statements.each do |statement|
    	connection.execute(statement)
    end
  end
  p "Taxonomy and Taxons Added."
#=========== End Data Loading ================


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
