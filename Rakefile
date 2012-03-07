require 'yaml'

namespace :db do
  task :connect do
    require 'sequel'
    DB = Sequel.connect(YAML.load_file(File.expand_path('../config/database.yml', __FILE__)))
  end

  desc 'Drop into a console with a DB connection'
  task :console => :connect do
    require 'irb'
    ARGV.clear
    IRB.start
  end

  desc 'Migrate the database to the latest version'
  task :migrate => :connect do
    Sequel.extension :migration
    Sequel::Migrator.apply(DB, File.expand_path('../db/migrate', __FILE__))
  end

  desc 'Rollback to version 0 of the database'
  task :drop => :connect do
    Sequel.extension :migration
    Sequel::Migrator.apply(DB, File.expand_path('../db/migrate', __FILE__), 0)
  end
end