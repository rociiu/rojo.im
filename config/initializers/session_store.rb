# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rojo_session',
  :secret      => '96265e15cd759fb9267d81a60bb128ad5d538ee8ffc9a2ed8cabb6fe0b2357172418b9c34557ab1dace0607d6710f2112efe6ee0bd9f70262b1e040060649005'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
