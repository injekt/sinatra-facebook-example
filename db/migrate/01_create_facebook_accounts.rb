Sequel.migration do
  change do
    create_table :facebook_accounts do
      primary_key :id
      FalseClass :active
      String :access_token
      String :oauth_authorize_url
      String :stream_url
      String :email_address
    end
  end
end