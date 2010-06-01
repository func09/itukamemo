# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_itukamemo_session',
  :secret      => '036d377b14a6e98ce209e66a68423fc2dd19d1ae026caead8b58999fd0da4ef2eb14b77ef5946d930eebeb07a3081439994635b40236d3a14253894762ddf8cb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
