db_config = YAML.load_file(File.expand_path('../../config/database.yml', __FILE__))
DB = Sequel.connect(db_config)

# Fail early if there's a problem connecting to our database
begin
  DB.test_connection
rescue Sequel::Error => e
  abort e.message
end

class FacebookAccount < Sequel::Model

end