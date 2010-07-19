# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_boots_session',
  :secret      => '2947a74392caf2220d771d47bb319282a7486b2dadfea5386321eb9a7c85d052a8cc8bd143876c9a85e21e73b48773c1f5834011c595083ee85d7bd918d87501'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
