# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pharm_session',
  :secret      => 'b557d0df4dae5d1f089c5da5fd4d8b4717016359c63619114a86eb3058d85f7792a7467787830ede5cceac036da0b8e7082c83fd33d1db004a58d647b888f969'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
